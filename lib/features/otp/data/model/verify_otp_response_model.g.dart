// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => VerifyOtpResponseModel(
  accessToken: json['access_token'] as String?,
  tokenType: json['token_type'] as String?,
);

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
  VerifyOtpResponseModel instance,
) => <String, dynamic>{
  'access_token': instance.accessToken,
  'token_type': instance.tokenType,
};
