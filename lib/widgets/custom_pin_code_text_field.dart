import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomPinCodeTextField extends StatelessWidget {
  CustomPinCodeTextField({
    Key? key,
    required this.context,
    required this.onChanged,
    this.alignment,
    this.controller,
    this.textStyle,
    this.hintStyle,
    this.validator,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final BuildContext context;

  final TextEditingController? controller;

  final TextStyle? textStyle;

  final TextStyle? hintStyle;

  Function(String) onChanged;

  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: pinCodeTextFieldWidget,
          )
        : pinCodeTextFieldWidget;
  }

  Widget get pinCodeTextFieldWidget => PinCodeTextField(
        appContext: context,
        controller: controller,
        length: 4,
        keyboardType: TextInputType.number,
        textStyle: textStyle ?? CustomTextStyles.headlineSmallIndigoA100,
        hintStyle: hintStyle ?? CustomTextStyles.headlineSmallIndigoA100,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        pinTheme: PinTheme(
          fieldHeight: 64.h,
          fieldWidth: 64.h,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(16.h),
          inactiveColor: appTheme.indigoA100,
          activeColor: appTheme.indigoA100,
          selectedColor: appTheme.indigoA10001,
        ),
        onChanged: (value) => onChanged(value),
        validator: validator,
      );
}
