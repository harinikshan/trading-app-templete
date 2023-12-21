import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumIndigoA10001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigoA10001,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumOnPrimaryContainer_1 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPink500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.pink500,
      );
  static get bodyMediumPink500_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.pink500,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Display text style
  static get displaySmallLightgreen900 =>
      theme.textTheme.displaySmall!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get displaySmallOnErrorContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get displaySmallOnPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  // Headline text style
  static get headlineSmallBluegray400 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get headlineSmallGray900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get headlineSmallGray900_1 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.4),
      );
  static get headlineSmallIndigo900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigo900,
      );
  static get headlineSmallIndigoA100 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.indigoA100,
      );
  static get headlineSmallKodchasanPrimary =>
      theme.textTheme.headlineSmall!.kodchasan.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallLightgreen900 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get headlineSmallOnErrorContainer_1 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer,
      );
  static get headlineSmallPink500 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.pink500,
      );
  // Label text style
  static get labelLargeAmber500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.amber500,
      );
  static get labelLargeBlue6007f => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue6007f,
      );
  static get labelLargeBlue700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blue700,
      );
  static get labelLargeBluegray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeBluegray400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );
  static get labelLargeGray600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray600,
      );
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get labelLargeGray900_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.5),
      );
  static get labelLargeGray900_2 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900.withOpacity(0.4),
      );
  static get labelLargeGreen500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.green500,
      );
  static get labelLargeGreenA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.greenA700,
      );
  static get labelLargeOnErrorContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargePink500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.pink500,
      );
  static get labelLargeRed900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red900,
      );
  static get labelLargeTeal200 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.teal200,
      );
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
      );
  static get titleMediumGray90016 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.4),
        fontSize: 16.fSize,
      );
  static get titleMediumGray900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumGray900_2 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900.withOpacity(0.4),
      );
  static get titleMediumGray900_3 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumKodchasanPrimary =>
      theme.textTheme.titleMedium!.kodchasan.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumOnErrorContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontSize: 16.fSize,
      );
  static get titleMediumOnErrorContainer16 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 16.fSize,
      );
  static get titleMediumPink500 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink500,
        fontSize: 16.fSize,
      );
  static get titleSmallBlue700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blue700,
      );
  static get titleSmallBluegray400 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.blueGray400,
      );
  static get titleSmallDeeporangeA200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepOrangeA200,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
      );
  static get titleSmallGray900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900.withOpacity(0.4),
      );
  static get titleSmallGray900_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallGray900_2 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray900,
      );
  static get titleSmallIndigoA10001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA10001,
      );
  static get titleSmallIndigoA10001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigoA10001,
      );
  static get titleSmallLightgreen900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOnErrorContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallOnPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get titleSmallPink500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink500,
      );
  static get titleSmallPink500_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.pink500,
      );
}

extension on TextStyle {
  TextStyle get eudoxusSans {
    return copyWith(
      fontFamily: 'Eudoxus Sans',
    );
  }

  TextStyle get kodchasan {
    return copyWith(
      fontFamily: 'Kodchasan',
    );
  }
}
