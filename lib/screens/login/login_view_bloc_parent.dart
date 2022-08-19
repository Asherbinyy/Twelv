import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_state.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/routes.dart';
import 'package:twelv/screens/login/login_view_nav_parent.dart';
import 'package:twelv/services/authentication/authentication_service.dart';
import 'package:twelv/services/navigation/navigation.dart';

class LoginViewBlocParent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (BuildContext context, AuthenticationState state) {
        manageLoadingView(context, show: state is Loading);
        if (state is SmsVerification) {
          navigator(NavigationService.login).navigateToIfNotCurrent(LoginRoutes.smsVerify);
        } else if (state is AuthenticationStateError) {
          showErrorMessageOverlay(_resolveAuthenticationError(state.error, context),
              context: context);
        }
      },
      buildWhen: (_, AuthenticationState current) => current is Initial,
      builder: (_, __) => LoginViewNavigationParent(),
    );
  }

  String _resolveAuthenticationError(AuthenticationError error, BuildContext context) {
    switch (error) {
      case AuthenticationError.invalidPhoneNum:
        return Str.of(context).errorLoginInvalidPhoneNumMessage;
      case AuthenticationError.wrongSmsCode:
        return Str.of(context).errorLoginWrongSmsCodeMessage;
      case AuthenticationError.userIssues:
        return Str.of(context).errorLoginUserIssuesMessage;
      case AuthenticationError.temporarilyBlocked:
        return Str.of(context).errorLoginTemporarilyBlockedMessage;
      case AuthenticationError.verificationTimeout:
        return Str.of(context).errorLoginSmsCodeTimedOutMessage;
      default:
        return Str.of(context).errorLoginGeneralMessage;
    }
  }
}
