import 'bloc/choose_payment_method_bloc.dart';
import 'models/choose_payment_method_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class ChoosePaymentMethodBottomsheet extends StatelessWidget {
  const ChoosePaymentMethodBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ChoosePaymentMethodBloc>(
      create: (context) => ChoosePaymentMethodBloc(ChoosePaymentMethodState(
        choosePaymentMethodModelObj: ChoosePaymentMethodModel(),
      ))
        ..add(ChoosePaymentMethodInitialEvent()),
      child: ChoosePaymentMethodBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 6.v,
            width: 48.h,
            decoration: BoxDecoration(
              color: appTheme.indigo50,
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_choose_payment_method".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 24.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
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
                  decoration: AppDecoration.fillOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder10,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTelevisionPink500,
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
                        "lbl_debit_card".tr,
                        style: CustomTextStyles.titleSmallGray900_1,
                      ),
                      SizedBox(height: 4.v),
                      Text(
                        "msg_invest_small_amounts".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowDownPink500,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(
                    top: 13.v,
                    right: 8.h,
                    bottom: 13.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomElevatedButton(
            text: "lbl_continue".tr,
          ),
          SizedBox(height: 44.v),
        ],
      ),
    );
  }
}
