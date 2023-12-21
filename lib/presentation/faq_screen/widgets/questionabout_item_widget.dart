import '../models/questionabout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class QuestionaboutItemWidget extends StatelessWidget {
  QuestionaboutItemWidget(
    this.questionaboutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  QuestionaboutItemModel questionaboutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 144.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.fillBlue.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: questionaboutItemModelObj?.userImage,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              SizedBox(height: 16.v),
              Text(
                questionaboutItemModelObj.questionsAbout!,
                style: theme.textTheme.bodySmall,
              ),
              SizedBox(height: 8.v),
              Text(
                questionaboutItemModelObj.gettingStarted!,
                style: theme.textTheme.titleSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
