import 'package:freezed_annotation/freezed_annotation.dart';
part 'api_results.freezed.dart';

@freezed
abstract class ApiResults<T> with _$ApiResults<T> {
  const factory ApiResults.success(T data) = Success<T>;
  //fix this to pass error handler
  const factory ApiResults.failure(String message) = Failure<T>;
}
