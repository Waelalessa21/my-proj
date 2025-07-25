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
    } on DioException catch (e) {
      String errorMessage = "Network error occurred";

      if (e.response != null) {
        // Server responded with error status
        final statusCode = e.response!.statusCode;
        final responseData = e.response!.data;

        if (statusCode == 400) {
          errorMessage = "Invalid phone number format";
        } else if (statusCode == 404) {
          errorMessage = "Service not found";
        } else if (statusCode == 500) {
          errorMessage = "Server error occurred";
        } else if (statusCode == 429) {
          errorMessage = "Too many requests. Please try again later";
        } else {
          errorMessage = "Server error: ${statusCode ?? 'Unknown'}";
        }

        // Log response data for debugging
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
