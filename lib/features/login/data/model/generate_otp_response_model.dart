import 'package:json_annotation/json_annotation.dart';

part 'generate_otp_response_model.g.dart';

@JsonSerializable()
class GenerateOtpResponseModel {
  final String message;
  final String? otpId;

  GenerateOtpResponseModel({required this.message, required this.otpId});

  factory GenerateOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GenerateOtpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateOtpResponseModelToJson(this);
}
