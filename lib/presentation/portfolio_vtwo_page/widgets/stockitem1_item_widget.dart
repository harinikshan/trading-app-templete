import '../models/stockitem1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Stockitem1ItemWidget extends StatelessWidget {
  Stockitem1ItemWidget(
    this.stockitem1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Stockitem1ItemModel stockitem1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: stockitem1ItemModelObj?.imageClass,
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
                stockitem1ItemModelObj.twtr!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                stockitem1ItemModelObj.twitterInc!,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: stockitem1ItemModelObj?.name,
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
                stockitem1ItemModelObj.text!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: stockitem1ItemModelObj?.imageClass1,
                      height: 6.v,
                      width: 8.h,
                      radius: BorderRadius.circular(
                        1.h,
                      ),
                      margin: EdgeInsets.only(
                        top: 4.v,
                        bottom: 5.v,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        stockitem1ItemModelObj.text1!,
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
