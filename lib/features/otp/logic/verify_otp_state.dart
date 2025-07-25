import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_state.freezed.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial() = Initial;
  const factory VerifyOtpState.loading() = Loading;
  const factory VerifyOtpState.success() = Success;
  const factory VerifyOtpState.error(String message) = Error;
}
