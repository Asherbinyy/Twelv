import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/documents/user_consent.dart';

part 'cookies_state.freezed.dart';

@freezed
@immutable
class CookiesState with _$CookiesState {
  const factory CookiesState.loading() = Loading;

  const factory CookiesState.apiError(Exception error) = ApiError;

  const factory CookiesState.initial(UserConsent consent) = Initial;

  const factory CookiesState.succeeded(UserConsent consent) = Succeeded;
}
