import 'bloc/onboarding_get_started_bloc.dart';
import 'models/onboarding_get_started_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_outlined_button.dart';

class OnboardingGetStartedScreen extends StatelessWidget {
  const OnboardingGetStartedScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingGetStartedBloc>(
      create: (context) => OnboardingGetStartedBloc(OnboardingGetStartedState(
        onboardingGetStartedModelObj: OnboardingGetStartedModel(),
      ))
        ..add(OnboardingGetStartedInitialEvent()),
      child: OnboardingGetStartedScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OnboardingGetStartedBloc, OnboardingGetStartedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray10001,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 60.v,
              ),
              child: Column(
                children: [
                  SizedBox(height: 21.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupIndigoA10001254x299,
                    height: 254.v,
                    width: 299.h,
                  ),
                  SizedBox(height: 36.v),
                  Text(
                    "msg_get_started_with".tr,
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 28.v),
                  Container(
                    width: 298.h,
                    margin: EdgeInsets.symmetric(horizontal: 14.h),
                    child: Text(
                      "msg_a_place_that_provides".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumGray600.copyWith(
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
                  SizedBox(height: 40.v),
                  CustomElevatedButton(
                    text: "lbl_get_started".tr,
                    buttonStyle: CustomButtonStyles.fillBlue,
                  ),
                  SizedBox(height: 16.v),
                  CustomOutlinedButton(
                    text: "lbl_sign_in".tr,
                    buttonStyle: CustomButtonStyles.outlinePink,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
