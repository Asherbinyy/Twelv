import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_tokens_request.g.dart';

@JsonSerializable()
class ExchangeTokensRequest {
  @JsonKey(name: "tokenId")
  final String authenticationToken;

  ExchangeTokensRequest({required this.authenticationToken});

  factory ExchangeTokensRequest.fromJson(Map<String, dynamic> json) =>
      _$ExchangeTokensRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeTokensRequestToJson(this);
}
