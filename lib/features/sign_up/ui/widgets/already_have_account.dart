import 'package:clinic_appointments_app/core/helper/extensions.dart';
import 'package:clinic_appointments_app/core/routing/routes.dart';
import 'package:clinic_appointments_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font13DarkBlueRegular),
        TextSpan(
            text: 'Login',
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              }),
      ]),
    );
  }
}
