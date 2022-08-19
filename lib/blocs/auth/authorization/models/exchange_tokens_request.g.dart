// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_tokens_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExchangeTokensRequest _$ExchangeTokensRequestFromJson(
    Map<String, dynamic> json) {
  return ExchangeTokensRequest(
    authenticationToken: json['tokenId'] as String,
  );
}

Map<String, dynamic> _$ExchangeTokensRequestToJson(
        ExchangeTokensRequest instance) =>
    <String, dynamic>{
      'tokenId': instance.authenticationToken,
    };
