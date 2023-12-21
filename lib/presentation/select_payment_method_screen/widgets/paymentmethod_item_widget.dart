import '../models/paymentmethod_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class PaymentmethodItemWidget extends StatelessWidget {
  PaymentmethodItemWidget(
    this.paymentmethodItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PaymentmethodItemModel paymentmethodItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillPink50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          Container(
            height: 40.v,
            width: 56.h,
            margin: EdgeInsets.symmetric(vertical: 2.v),
            padding: EdgeInsets.symmetric(
              horizontal: 12.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.fillOnErrorContainer.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: CustomImageView(
              imagePath: paymentmethodItemModelObj?.iconImage,
              height: 13.v,
              width: 32.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  paymentmethodItemModelObj.titleText!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  paymentmethodItemModelObj.descriptionText!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgContrastIndigoA10001,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 13.v,
              right: 8.h,
              bottom: 13.v,
            ),
          ),
        ],
      ),
    );
  }
}
