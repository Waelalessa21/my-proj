// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequestModel _$VerifyOtpRequestModelFromJson(
  Map<String, dynamic> json,
) => VerifyOtpRequestModel(
  phone: json['phone'] as String?,
  activeKey: json['activeKey'] as String?,
);

Map<String, dynamic> _$VerifyOtpRequestModelToJson(
  VerifyOtpRequestModel instance,
) => <String, dynamic>{
  'phone': instance.phone,
  'activeKey': instance.activeKey,
};
