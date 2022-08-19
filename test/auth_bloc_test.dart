import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:matcher/matcher.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_state.dart';
import 'package:twelv/blocs/auth/authorization/authorization_bloc.dart';
import 'package:twelv/blocs/auth/authorization/authorization_event.dart';
import 'package:twelv/blocs/auth/authorization/authorization_model.dart';
import 'package:twelv/blocs/auth/authorization/authorization_state.dart';
import 'package:twelv/blocs/auth/authorization/models/access_token_response.dart';
import 'package:twelv/services/authentication/authentication_service.dart';

import 'auth_bloc_test.mocks.dart';

final Matcher authorized = equals(const AuthorizationState.authorized(isOnboarded: false));
final Matcher unauthorized = equals(const AuthorizationState.unauthorized());

@GenerateMocks(<Type>[], customMocks: <MockSpec<dynamic>>[
  MockSpec<AuthorizationModel>(returnNullOnMissingStub: true),
  MockSpec<AuthenticationBloc>(returnNullOnMissingStub: true)
])
void main() {
  late MockAuthorizationModel authModel;
  late MockAuthenticationBloc authenticationBloc;
  late AuthorizationBloc authBloc;

  setUp(() {
    authModel = MockAuthorizationModel();
    authenticationBloc = MockAuthenticationBloc();
    authBloc = AuthorizationBloc(authModel, authenticationBloc);
  });

  tearDown(() {
    authBloc.close();
  });

  group('Authorization and Authentication', () {
    test(
        'initial authorization state should be unauthorized even if session is active and we have authentication token',
        () {
      when(authenticationBloc.state)
          .thenAnswer((_) => const AuthenticationState.tokenReceived(authenticationToken: ''));
      expect(authBloc.state, unauthorized);
    });

    blocTest(
        'authorization should try to restore previous session as long as user is authenticated',
        build: () {
          const AuthenticationState authenticated =
              AuthenticationState.tokenReceived(authenticationToken: '');
          when(authenticationBloc.stream)
              .thenAnswer((_) => Stream<AuthenticationState>.value(authenticated));
          when(authenticationBloc.state).thenAnswer((_) => authenticated);
          when(authModel.exchangeAuthenticationToken(any))
              .thenAnswer((_) async => AccessTokenResponse(accessToken: '', isOnboarded: false));
          return authBloc;
        },
        act: (AuthorizationBloc? bloc) => bloc?.add(const AuthorizationEvent.restoreSession()),
        expect: () => [authorized]);

    blocTest('user could not be authorized if he is not authenticated',
        build: () {
          const AuthenticationState authenticationTokenIsLost =
              AuthenticationState.error(AuthenticationError.tokenLost);
          when(authenticationBloc.stream)
              .thenAnswer((_) => Stream<AuthenticationState>.value(authenticationTokenIsLost));
          when(authenticationBloc.state).thenAnswer((_) => authenticationTokenIsLost);
          return authBloc;
        },
        act: (AuthorizationBloc? bloc) => bloc?.add(const AuthorizationEvent.restoreSession()),
        expect: () => [unauthorized]);

    blocTest('authorization should change its state based on authentication on the fly',
        build: () {
          final List<AuthenticationState> authSessionSuddenlyBrokenCase = <AuthenticationState>[
            const AuthenticationState.tokenReceived(authenticationToken: ''),
            const AuthenticationState.error(AuthenticationError.tokenLost)
          ];
          when(authenticationBloc.stream).thenAnswer(
              (_) => Stream<AuthenticationState>.fromIterable(authSessionSuddenlyBrokenCase));
          when(authenticationBloc.state).thenAnswer((_) => authSessionSuddenlyBrokenCase.first);
          when(authModel.exchangeAuthenticationToken(any))
              .thenAnswer((_) async => AccessTokenResponse(accessToken: '', isOnboarded: false));
          return authBloc;
        },
        act: (AuthorizationBloc? bloc) => bloc?.add(const AuthorizationEvent.restoreSession()),
        expect: () => [authorized, unauthorized]);
  });
}
