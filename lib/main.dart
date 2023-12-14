import 'package:clinic_appointments_app/core/di/dependency_injection.dart';
import 'package:clinic_appointments_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
