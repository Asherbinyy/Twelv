import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/model/user/profile_data.dart';
import 'package:twelv/screens/explorer/bloc/explorer_bloc.dart';
import 'package:twelv/screens/explorer/bloc/explorer_event.dart';
import 'package:twelv/screens/likes/bloc/likes_bloc.dart';
import 'package:twelv/screens/likes/bloc/likes_event.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_event.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_model.dart';
import 'package:twelv/screens/likes/users_bloc/user_profile_state.dart';

class UserProfileBloc extends Bloc<UserProfileEvent, UserProfileState> {
  final UserProfileModel _model;

  UserProfileBloc(this._model) : super(const UserProfileState.initial());

  ExplorerBloc? explorerBloc;
  LikesBloc? likesBloc;

  @override
  Stream<UserProfileState> mapEventToState(UserProfileEvent event) async* {
    try {
      if (event is Fetch) {
        yield const UserProfileState.loading();

        final ProfileData profileData =
            await _model.getProfile(userId: event.userId, useCredit: event.useCredit ?? false);

        if (event.useCredit == true) {
          explorerBloc?.add(const ExplorerEvent.fetch());
          likesBloc?.add(const LikesEvent.fetch());
        }
        yield UserProfileState.fetchedData(profileData.data);
      }
    } on DioError catch (e) {
      yield UserProfileState.apiError(e, event);
    }
  }
}
