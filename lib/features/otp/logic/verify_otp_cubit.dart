import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayer_version2/common/networking/api_results.dart';
import 'package:sayer_version2/features/otp/data/model/verify_otp_request_model.dart';
import 'package:sayer_version2/features/otp/data/repo/verify_otp_repo.dart';
import 'package:sayer_version2/features/otp/logic/verify_otp_state.dart';

class VerifyOtpCubit extends Cubit<VerifyOtpState> {
  final VerifyOtpRepo _verifyOtpRepo;

  VerifyOtpCubit(this._verifyOtpRepo) : super(const VerifyOtpState.initial());

  final TextEditingController otpController = TextEditingController();

  String phoneNumber = '';
  String accessToken = '';

  Future<void> verifyOtp(String phone) async {
    emit(const VerifyOtpState.loading());

    final otpCode = otpController.text;

    print("Verifying OTP: $otpCode for phone: $phone");

    final response = await _verifyOtpRepo.verifyOtp(
      VerifyOtpRequestModel(phone: phone, activeKey: otpCode),
    );

    response.when(
      success: (verifyResponse) {
        print(
          "OTP verified successfully. Access token: ${verifyResponse.accessToken}",
        );
        accessToken = verifyResponse.accessToken ?? '';
        emit(const VerifyOtpState.success());
      },
      failure: (error) {
        print("OTP verification failed: $error");
        emit(VerifyOtpState.error(error));
      },
    );
  }

  Future<void> verifyOtpRequest(BuildContext context) async {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>? ??
        {};
    phoneNumber = arguments['phone'] as String? ?? '';
    await verifyOtp(phoneNumber);
  }

  void clearOtpFields() {
    otpController.clear();
  }

  @override
  Future<void> close() {
    otpController.dispose();
    return super.close();
  }
}
