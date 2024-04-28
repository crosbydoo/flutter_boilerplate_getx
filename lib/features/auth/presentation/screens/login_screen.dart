import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:boilerplate_getx/features/auth/presentation/contents/login_form_content.dart';
import 'package:boilerplate_getx/res/typography/typography.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome Back,', style: MyTypography.titleMedium),
                Text(
                  'Login now to continue',
                  style: MyTypography.labelLarge.copyWith(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const Gap(34),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/img/login_icon.png',
                    scale: 3,
                  ),
                ),
                const LoginFormContent(),
                const Gap.expand(60),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'Copyright © 2024 Crosbydev. All rights reserved.',
                    style: MyTypography.labelMedium
                        .copyWith(fontWeight: FontWeight.w400, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
