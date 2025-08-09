import 'package:dio/dio.dart';
import 'package:sayer_version2/common/networking/api_results.dart';
import 'package:sayer_version2/features/login/data/model/generate_otp_request_model.dart';
import 'package:sayer_version2/features/login/data/model/generate_otp_response_model.dart';
import 'package:sayer_version2/features/login/data/service/generate_otp_service.dart';

class GenerateOtpRepo {
  final GenerateOtpService _generateOtpService;

  GenerateOtpRepo(this._generateOtpService);

  Future<ApiResults<GenerateOtpResponseModel>> generateOtp(
    GenerateOtpRequestModel generateOtpRequestModel,
  ) async {
    try {
      final response = await _generateOtpService.generateOtp(
        generateOtpRequestModel,
      );
      return ApiResults.success(response);
    } catch (e) {
      print("Error: $e");
      return ApiResults.failure(e.toString());
    }
  }
}
