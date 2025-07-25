// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GenerateOtpResponseModel _$GenerateOtpResponseModelFromJson(
  Map<String, dynamic> json,
) => GenerateOtpResponseModel(
  message: json['message'] as String,
  otpId: json['otpId'] as String?,
);

Map<String, dynamic> _$GenerateOtpResponseModelToJson(
  GenerateOtpResponseModel instance,
) => <String, dynamic>{'message': instance.message, 'otpId': instance.otpId};
