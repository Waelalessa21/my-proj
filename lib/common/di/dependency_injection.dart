import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:sayer_version2/common/networking/api_constants.dart';
import 'package:sayer_version2/common/networking/dio_factory.dart';
import 'package:sayer_version2/features/login/logic/generate_otp_cubit.dart';
import 'package:sayer_version2/features/login/data/repo/generate_otp_repo.dart';
import 'package:sayer_version2/features/login/data/service/generate_otp_service.dart';
import 'package:sayer_version2/features/otp/logic/verify_otp_cubit.dart';
import 'package:sayer_version2/features/otp/data/repo/verify_otp_repo.dart';
import 'package:sayer_version2/features/otp/data/service/verify_otp_service.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  final dio = DioFactory.getDio();

  // Add logging interceptor for debugging
  DioFactory.addDioInterceptor();

  getIt.registerLazySingleton<Dio>(() => dio);

  // Login services
  getIt.registerLazySingleton<GenerateOtpService>(
    () => GenerateOtpService(dio, baseUrl: ApiConstants.apiBaseUrl),
  );

  getIt.registerLazySingleton<GenerateOtpRepo>(
    () => GenerateOtpRepo(getIt<GenerateOtpService>()),
  );

  getIt.registerFactory<GenerateOtpCubit>(
    () => GenerateOtpCubit(getIt<GenerateOtpRepo>()),
  );

  // OTP verification services
  getIt.registerLazySingleton<VerifyOtpService>(
    () => VerifyOtpService(dio, baseUrl: ApiConstants.apiBaseUrl),
  );

  getIt.registerLazySingleton<VerifyOtpRepo>(
    () => VerifyOtpRepo(getIt<VerifyOtpService>()),
  );

  getIt.registerFactory<VerifyOtpCubit>(
    () => VerifyOtpCubit(getIt<VerifyOtpRepo>()),
  );
}
