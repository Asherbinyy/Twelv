import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_bloc.dart';
import 'package:twelv/blocs/auth/authentication/authentication_event.dart';
import 'package:twelv/blocs/location/location_bloc.dart';
import 'package:twelv/blocs/location/location_state.dart';
import 'package:twelv/screens/profile/bloc/profile_event.dart';
import 'package:twelv/screens/profile/bloc/profile_model.dart';
import 'package:twelv/screens/profile/bloc/profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileModel _model;
  final AuthenticationBloc _authenticationBloc;

  StreamSubscription<LocationState>? _locationSub;

  ProfileBloc(this._model, this._authenticationBloc)
      : super(_model.currentUser == null
            ? ProfileState.error(error: Exception('Home cannot be displayed without current user'))
            : ProfileState.initial(user: _model.currentUser!));

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent event) async* {
    try {
      yield const ProfileState.loading();
      if (event is AddPhoto) {
        await _model.addPhoto(event.file);
        yield ProfileState.user(user: _model.currentUser!);
      } else if (event is DelPhoto) {
        await _model.delPhoto(event.id);
        yield ProfileState.user(user: _model.currentUser!);
      } else if (event is UpdateUser) {
        await _model.updateUser(event.currentUser);
        yield ProfileState.user(user: _model.currentUser!);
      } else if (event is ReloadUser) {
        await _model.reloadUser();
        yield ProfileState.user(user: _model.currentUser!);
      } else if (event is Delete) {
        await _model.deleteUser();
        _authenticationBloc.add(const AuthenticationEvent.signOut());
      }
    } on DioError catch (e) {
      yield ProfileState.error(error: e);
    }
  }

  //ignore: avoid_setters_without_getters
  set locationBloc(LocationBloc locationBloc) {
    _locationSub = locationBloc.stream
        .where((LocationState state) => state is Success)
        .listen((LocationState state) {
      add(const ProfileEvent.reloadUser());
    });
  }

  @override
  Future<void> close() {
    _locationSub?.cancel();
    return super.close();
  }
}
