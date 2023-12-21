import '../models/stocklist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class StocklistItemWidget extends StatelessWidget {
  StocklistItemWidget(
    this.stocklistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  StocklistItemModel stocklistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: stocklistItemModelObj?.trashImage,
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
                stocklistItemModelObj.twtr!,
                style: theme.textTheme.titleMedium,
              ),
              SizedBox(height: 6.v),
              Text(
                stocklistItemModelObj.twitterInc!,
                style: theme.textTheme.labelLarge,
              ),
            ],
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: stocklistItemModelObj?.twtrImage,
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
                stocklistItemModelObj.priceText!,
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
                      imagePath: stocklistItemModelObj?.fastForwardImage,
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
                        stocklistItemModelObj.percentText!,
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
