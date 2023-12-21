import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  borderRadius: BorderRadius.circular(20.h),
                  border: Border.all(
                    color: appTheme.indigoA10001,
                    width: 1.h,
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(32.h),
      );
  static BoxDecoration get fillPrimaryTL24 => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink500,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillIndigoA => BoxDecoration(
        color: appTheme.indigoA10001,
        borderRadius: BorderRadius.circular(24.h),
      );
  static BoxDecoration get fillIndigoATL12 => BoxDecoration(
        color: appTheme.indigoA10001,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA100,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineOnErrorContainer => BoxDecoration(
        color: appTheme.pink500,
        borderRadius: BorderRadius.circular(20.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 4.h,
        ),
      );
  static BoxDecoration get fillPinkTL12 => BoxDecoration(
        color: appTheme.pink500,
        borderRadius: BorderRadius.circular(12.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get outlineOnErrorContainerTL10 => BoxDecoration(
        color: appTheme.teal50,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 2.h,
        ),
      );
  static BoxDecoration get outlineOnErrorContainerTL101 => BoxDecoration(
        color: appTheme.teal5001,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          width: 2.h,
        ),
      );
}
