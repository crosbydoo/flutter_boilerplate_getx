import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import 'package:boilerplate_getx/features/auth/controller/auth_controller.dart';
import 'package:boilerplate_getx/features/auth/data/remote/requests/login_request.dart';
import 'package:boilerplate_getx/res/general_ui/button/general_button.dart';
import 'package:boilerplate_getx/res/general_ui/textform/general_textform.dart';
import 'package:boilerplate_getx/res/general_ui/textform/general_textform_enum.dart';

class LoginFormContent extends GetView<AuthController> {
  const LoginFormContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isShowPassword = ValueNotifier<bool>(true);
    final usernameController = TextEditingController();
    final passwordController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GeneralTextFormField(
            controller: usernameController,
            label: 'Username',
            hint: 'your username',
            validator: const [
              GeneralTextFormValidator.isNotEmpty,
            ],
          ),
          const Gap(14),
          ValueListenableBuilder(
            valueListenable: isShowPassword,
            builder: (context, value, child) {
              return GeneralTextFormField(
                isPassword: isShowPassword.value,
                controller: passwordController,
                label: 'Password',
                hint: 'your password',
                validator: const [
                  GeneralTextFormValidator.isNotEmpty,
                ],
                suffixIcon: IconButton(
                  icon: Icon(
                    isShowPassword.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                  ),
                  onPressed: () {
                    isShowPassword.value = !isShowPassword.value;
                  },
                ),
              );
            },
          ),
          const Gap(32),
          SizedBox(
            width: double.infinity,
            child: GeneralButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  final loginForm = LoginRequest(
                    username: usernameController.text,
                    password: passwordController.text,
                  );
                  controller.login(loginForm);
                }
              },
              label: 'Login',
            ),
          ),
        ],
      ),
    );
  }
}
