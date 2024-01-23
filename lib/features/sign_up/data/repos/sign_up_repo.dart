import 'package:clinic_appointments_app/core/networking/api_error_handler.dart';
import 'package:clinic_appointments_app/core/networking/api_result.dart';
import 'package:clinic_appointments_app/core/networking/api_service.dart';
import 'package:clinic_appointments_app/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:clinic_appointments_app/features/sign_up/data/model/sign_up_response.dart';

class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SingupRequestBody singupRequestBody) async {
    try {
      final response = await _apiService.signup(singupRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
