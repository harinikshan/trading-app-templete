import '../models/stockitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class StockitemItemWidget extends StatelessWidget {
  StockitemItemWidget(
    this.stockitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StockitemItemModel stockitemItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: AppDecoration.fillGray5001.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      width: 220.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: stockitemItemModelObj?.fb,
                height: 48.adaptSize,
                width: 48.adaptSize,
                margin: EdgeInsets.only(bottom: 1.v),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 16.h,
                  top: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      stockitemItemModelObj.text1!,
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 7.v),
                    Text(
                      stockitemItemModelObj.text2!,
                      style: theme.textTheme.labelLarge,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 17.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_365".tr,
                  style: theme.textTheme.titleMedium,
                ),
                TextSpan(
                  text: "lbl2".tr,
                  style: CustomTextStyles.titleMediumBluegray400,
                ),
                TextSpan(
                  text: "lbl_51".tr,
                  style: CustomTextStyles.titleSmallBluegray400,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 8.v),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 1.v),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_22".tr,
                        style: CustomTextStyles.titleSmallPink500_1,
                      ),
                      TextSpan(
                        text: "lbl_16".tr,
                        style: CustomTextStyles.labelLargeTeal200,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomElevatedButton(
                height: 20.v,
                width: 69.h,
                text: "lbl_0_59".tr,
                margin: EdgeInsets.only(left: 8.h),
                buttonStyle: CustomButtonStyles.fillPink,
                buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
