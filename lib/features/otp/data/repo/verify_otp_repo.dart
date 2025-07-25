import 'package:dio/dio.dart';
import 'package:sayer_version2/common/networking/api_results.dart';
import 'package:sayer_version2/features/otp/data/model/verify_otp_request_model.dart';
import 'package:sayer_version2/features/otp/data/model/verify_otp_response_model.dart';
import 'package:sayer_version2/features/otp/data/service/verify_otp_service.dart';

class VerifyOtpRepo {
  final VerifyOtpService _verifyOtpService;

  VerifyOtpRepo(this._verifyOtpService);

  Future<ApiResults<VerifyOtpResponseModel>> verifyOtp(
    VerifyOtpRequestModel verifyOtpRequestModel,
  ) async {
    try {
      final response = await _verifyOtpService.verifyOtp(verifyOtpRequestModel);
      return ApiResults.success(response);
    } on DioException catch (e) {
      String errorMessage = "Network error occurred";

      if (e.response != null) {
        final statusCode = e.response!.statusCode;
        final responseData = e.response!.data;

        if (statusCode == 400) {
          errorMessage = "Invalid OTP code";
        } else if (statusCode == 404) {
          errorMessage = "Service not found";
        } else if (statusCode == 500) {
          errorMessage = "Server error occurred";
        } else if (statusCode == 422) {
          errorMessage = "Invalid OTP code or expired";
        } else {
          errorMessage = "Server error: ${statusCode ?? 'Unknown'}";
        }

        print("API Error Response: $responseData");
      } else if (e.type == DioExceptionType.connectionTimeout) {
        errorMessage =
            "Connection timeout. Please check your internet connection";
      } else if (e.type == DioExceptionType.receiveTimeout) {
        errorMessage = "Request timeout. Please try again";
      } else if (e.type == DioExceptionType.connectionError) {
        errorMessage = "No internet connection. Please check your network";
      }

      print("DioException: ${e.message}");
      return ApiResults.failure(errorMessage);
    } catch (e) {
      print("Unexpected error: $e");
      return ApiResults.failure("An unexpected error occurred: $e");
    }
  }
}
