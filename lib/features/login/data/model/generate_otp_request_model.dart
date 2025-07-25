import 'package:json_annotation/json_annotation.dart';

part 'generate_otp_request_model.g.dart';

@JsonSerializable()
class GenerateOtpRequestModel {
  @JsonKey(name: 'phone')
  final String phoneNumber;

  GenerateOtpRequestModel({required this.phoneNumber});

  factory GenerateOtpRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GenerateOtpRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$GenerateOtpRequestModelToJson(this);
}
