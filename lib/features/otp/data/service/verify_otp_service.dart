import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:sayer_version2/common/networking/api_constants.dart';
import 'package:sayer_version2/common/networking/api_errors_constants.dart';
import 'package:sayer_version2/features/otp/data/model/verify_otp_request_model.dart';
import 'package:sayer_version2/features/otp/data/model/verify_otp_response_model.dart';

part 'verify_otp_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class VerifyOtpService {
  factory VerifyOtpService(
    Dio dio, {
    String baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _VerifyOtpService;

  @POST(ApiConstants.verifyOtp)
  Future<VerifyOtpResponseModel> verifyOtp(
    @Body() VerifyOtpRequestModel request,
  );
}
