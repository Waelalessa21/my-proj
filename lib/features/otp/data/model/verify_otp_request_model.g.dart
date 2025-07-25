// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequestModel _$VerifyOtpRequestModelFromJson(
  Map<String, dynamic> json,
) => VerifyOtpRequestModel(
  phoneNumber: json['phone'] as String,
  otpCode: json['otp'] as String,
  otpId: json['otp_id'] as String,
);

Map<String, dynamic> _$VerifyOtpRequestModelToJson(
  VerifyOtpRequestModel instance,
) => <String, dynamic>{
  'phone': instance.phoneNumber,
  'otp': instance.otpCode,
  'otp_id': instance.otpId,
};
