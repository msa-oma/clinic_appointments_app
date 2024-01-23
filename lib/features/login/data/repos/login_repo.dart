import 'package:clinic_appointments_app/core/networking/api_error_handler.dart';
import 'package:clinic_appointments_app/core/networking/api_result.dart';
import 'package:clinic_appointments_app/core/networking/api_service.dart';
import 'package:clinic_appointments_app/features/login/data/models/login_response.dart';

import '../models/login_request_body.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
