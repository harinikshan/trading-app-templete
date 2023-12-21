import 'bloc/onboarding_bloc.dart';
import 'models/onboarding_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingBloc>(
      create: (context) => OnboardingBloc(OnboardingState(
        onboardingModelObj: OnboardingModel(),
      ))
        ..add(OnboardingInitialEvent()),
      child: OnboardingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray10001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 35.h,
                vertical: 40.v,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 82.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupIndigoA10001,
                    height: 277.v,
                    width: 303.h,
                  ),
                  SizedBox(height: 54.v),
                  Text(
                    "msg_buy_trade_top".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 25.v),
                  SizedBox(
                    width: 298.h,
                    child: Text(
                      "msg_a_place_that_provides".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                        height: 1.71,
                      ),
                    ),
                  ),
                  SizedBox(height: 36.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 8.v,
                    width: 40.h,
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildNextButton(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNextButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_next".tr,
      margin: EdgeInsets.only(
        left: 24.h,
        right: 24.h,
        bottom: 60.v,
      ),
    );
  }
}
