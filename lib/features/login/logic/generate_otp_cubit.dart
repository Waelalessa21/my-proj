import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sayer_version2/common/networking/api_results.dart';
import 'package:sayer_version2/features/login/data/model/generate_otp_request_model.dart';
import 'package:sayer_version2/features/login/data/repo/generate_otp_repo.dart';
import 'package:sayer_version2/features/login/logic/generate_otp_state.dart';

class GenerateOtpCubit extends Cubit<GenerateOtpState> {
  final GenerateOtpRepo _generateOtpRepo;

  GenerateOtpCubit(this._generateOtpRepo)
    : super(const GenerateOtpState.initial());

  final TextEditingController phoneNumberController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String phoneNumber = '';
  String otpId = '';

  Future<void> generateOtpRequest(BuildContext context) async {
    emit(const GenerateOtpState.loading());
    final phone =
        phoneNumber.isNotEmpty ? phoneNumber : phoneNumberController.text;

    print("Generating OTP for phone number: $phone");

    final response = await _generateOtpRepo.generateOtp(
      GenerateOtpRequestModel(phoneNumber: phone),
    );

    response.when(
      success: (loginResponse) {
        print("OTP generated successfully. OTP ID: ${loginResponse.otpId}");
        print("Response message: ${loginResponse.message}");
        otpId = loginResponse.otpId ?? '';
        emit(const GenerateOtpState.phoneNumberSubmitted());
      },
      failure: (error) {
        print("OTP generation failed: $error");
        emit(GenerateOtpState.error(error));
      },
    );
  }

  @override
  Future<void> close() {
    phoneNumberController.dispose();
    return super.close();
  }
}
