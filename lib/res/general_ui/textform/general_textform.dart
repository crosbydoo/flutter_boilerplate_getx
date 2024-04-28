import 'package:boilerplate_getx/res/general_ui/textform/general_textform_enum.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:boilerplate_getx/res/typography/typography.dart';

class GeneralTextFormField extends StatelessWidget {
  const GeneralTextFormField({
    super.key,
    this.borderRadius,
    this.hint,
    this.isPassword = false,
    required this.label,
    this.suffixIcon,
    required this.controller,
    this.validator,
  });

  final String label;
  final String? hint;
  final double? borderRadius;
  final bool isPassword;
  final IconButton? suffixIcon;
  final TextEditingController controller;
  final List<GeneralTextFormValidator>? validator;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: MyTypography.labelMedium,
        ),
        const Gap(4),
        TextFormField(
          controller: controller,
          obscureText: isPassword,
          validator: validateInput,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: MyTypography.labelMedium.copyWith(
              color: Colors.black38,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            suffixIcon: suffixIcon,
          ),
        ),
      ],
    );
  }

  String? validateInput(String? value) {
    for (var validation in validator!) {
      final message = getValidationMessage(validation);
      switch (validation) {
        case GeneralTextFormValidator.isNotEmpty:
          if (value == null || value.isEmpty) {
            return message;
          }
          break;
        case GeneralTextFormValidator.min8Char:
          if ((value?.length ?? 0) < 8) {
            return message;
          }
          break;
        case GeneralTextFormValidator.validEmail:
          final bool isValid = EmailValidator.validate(value!);
          if (value.isEmpty || !isValid) {
            return message;
          }
          break;
        default:
          break;
      }
    }
    return null;
  }
}

String getValidationMessage(GeneralTextFormValidator validation) {
  switch (validation) {
    case GeneralTextFormValidator.isNotEmpty:
      return 'Please input the form';
    case GeneralTextFormValidator.min8Char:
      return 'Please enter at least 8 characters';
    case GeneralTextFormValidator.validEmail:
      return 'Please enter a valid email';
    default:
      return '';
  }
}
