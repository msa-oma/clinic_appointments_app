import 'package:clinic_appointments_app/features/login/data/models/login_request_body.dart';
import 'package:clinic_appointments_app/features/sign_up/data/model/sign_up_request_body.dart';
import 'package:clinic_appointments_app/features/sign_up/data/model/sign_up_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../features/login/data/models/login_response.dart';
import 'api_constants.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

// -------------- Auth -------------- //
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SingupRequestBody singupRequestBody,
  );
}
