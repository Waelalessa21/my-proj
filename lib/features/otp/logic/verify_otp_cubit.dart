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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String phoneNumber = '';
  String otpId = '';

  Future<void> verifyOtpRequest(BuildContext context) async {
    if (otpController.text.isEmpty || otpController.text.length != 4) {
      emit(const VerifyOtpState.error("Please enter a valid 4-digit OTP code"));
      return;
    }

    emit(const VerifyOtpState.loading());

    print(
      "Verifying OTP for phone: $phoneNumber, OTP: ${otpController.text}, OTP ID: $otpId",
    );

    final response = await _verifyOtpRepo.verifyOtp(
      VerifyOtpRequestModel(
        phoneNumber: phoneNumber,
        otpCode: otpController.text,
        otpId: otpId,
      ),
    );

    response.when(
      success: (verifyResponse) {
        print("OTP verified successfully. Token: ${verifyResponse.token}");
        print("User ID: ${verifyResponse.userId}");
        emit(const VerifyOtpState.success());
      },
      failure: (error) {
        print("OTP verification failed: $error");
        emit(VerifyOtpState.error(error));
      },
    );
  }

  @override
  Future<void> close() {
    otpController.dispose();
    return super.close();
  }
}
