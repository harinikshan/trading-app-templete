import '../models/item_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class ItemItemWidget extends StatelessWidget {
  ItemItemWidget(
    this.itemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ItemItemModel itemItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: itemItemModelObj?.trashImage,
          height: 48.adaptSize,
          width: 48.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemItemModelObj.twtr!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                itemItemModelObj.twitterInc!,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: itemItemModelObj?.twitterImage,
          height: 32.v,
          width: 80.h,
          margin: EdgeInsets.symmetric(vertical: 8.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 2.v,
          ),
          child: Column(
            children: [
              Text(
                itemItemModelObj.priceText!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomImageView(
                      imagePath: itemItemModelObj?.fastForwardImage,
                      height: 6.v,
                      width: 8.h,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      margin: EdgeInsets.symmetric(vertical: 4.v),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        itemItemModelObj.percentText!,
                        style: CustomTextStyles.labelLargeBlue700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
