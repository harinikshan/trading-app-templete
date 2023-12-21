import '../models/debitcardlist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class DebitcardlistItemWidget extends StatelessWidget {
  DebitcardlistItemWidget(
    this.debitcardlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DebitcardlistItemModel debitcardlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        children: [
          Container(
            height: 40.v,
            width: 56.h,
            margin: EdgeInsets.symmetric(vertical: 1.v),
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillPink.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder10,
            ),
            child: CustomImageView(
              imagePath: debitcardlistItemModelObj?.iconImage,
              height: 24.adaptSize,
              width: 24.adaptSize,
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  debitcardlistItemModelObj.debitCardText!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  debitcardlistItemModelObj.investText!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: debitcardlistItemModelObj?.contrastImage,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 12.v,
              right: 8.h,
              bottom: 12.v,
            ),
          ),
        ],
      ),
    );
  }
}
