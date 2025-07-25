import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request_model.g.dart';

@JsonSerializable()
class VerifyOtpRequestModel {
  @JsonKey(name: 'phone')
  final String phoneNumber;

  @JsonKey(name: 'otp')
  final String otpCode;

  @JsonKey(name: 'otp_id')
  final String otpId;

  VerifyOtpRequestModel({
    required this.phoneNumber,
    required this.otpCode,
    required this.otpId,
  });

  factory VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpRequestModelToJson(this);
}
