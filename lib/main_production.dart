import 'package:clinic_appointments_app/core/di/dependency_injection.dart';
import 'package:clinic_appointments_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'doc_app.dart';

void main() async {
  setupGetIt();
  //to fix .sp font Text being hidden bug in flutter_screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
