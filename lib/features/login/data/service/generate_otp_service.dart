import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sayer_version2/common/networking/api_constants.dart';
import 'package:sayer_version2/common/networking/api_errors_constants.dart';
import 'package:sayer_version2/features/login/data/model/generate_otp_request_model.dart';
import 'package:sayer_version2/features/login/data/model/generate_otp_response_model.dart';

part 'generate_otp_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class GenerateOtpService {
  factory GenerateOtpService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _GenerateOtpService;

  @POST(ApiConstants.generateOtp)
  Future<GenerateOtpResponseModel> generateOtp(
    @Body() GenerateOtpRequestModel request,
  );
}
