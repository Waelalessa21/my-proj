import 'package:freezed_annotation/freezed_annotation.dart';

part 'generate_otp_state.freezed.dart';

@freezed
class GenerateOtpState with _$GenerateOtpState {
  const factory GenerateOtpState.initial() = _Initial;
  const factory GenerateOtpState.loading() = Loading;
  const factory GenerateOtpState.phoneNumberSubmitted() = PhoneNumberSubmitted;
  const factory GenerateOtpState.error(String message) = Error;
}
