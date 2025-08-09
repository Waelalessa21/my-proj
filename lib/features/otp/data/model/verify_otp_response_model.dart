import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response_model.g.dart';

@JsonSerializable()
class VerifyOtpResponseModel {
  @JsonKey(name: 'access_token')
  String? accessToken;
  @JsonKey(name: 'token_type')
  String? tokenType;

  VerifyOtpResponseModel({this.accessToken, this.tokenType});

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyOtpResponseModelToJson(this);
}
