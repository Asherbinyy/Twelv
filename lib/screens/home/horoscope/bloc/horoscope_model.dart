import 'package:twelv/model/zodiac/horoscope_response.dart';
import 'package:twelv/services/formatters/date_formatter.dart';
import 'package:twelv/services/formatters/formatters.dart';
import 'package:twelv/services/network/api/user_client.dart';

class HoroscopeModel {
  final UserRestClient _userRestClient;
  final FormatterService _formatterService;

  String? _horoscopeDate;
  HoroscopeResponse? _horoscopeResponse;

  HoroscopeModel(this._userRestClient, this._formatterService);

  bool showLoading() {
    if (_horoscopeDate == null || _horoscopeResponse == null) {
      return true;
    }
    final String date =
        _formatterService.date.format(DateTime.now(), inFormat: AppDateFormat.dateApi) ?? "";
    return date != _horoscopeDate;
  }

  Future<HoroscopeResponse> getHoroscope() async {
    final String date =
        _formatterService.date.format(DateTime.now(), inFormat: AppDateFormat.dateApi) ?? "";

    if (!showLoading() && _horoscopeResponse != null) {
      return _horoscopeResponse!;
    }

    final HoroscopeResponse response = await _userRestClient.getHoroscope(date);
    _horoscopeDate = date;
    _horoscopeResponse = response;

    return response;
  }
}
