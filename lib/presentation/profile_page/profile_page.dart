import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(ProfileState(
        profileModelObj: ProfileModel(),
      ))
        ..add(ProfileInitialEvent()),
      child: ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 17.v),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Row(
                        children: [
                          Container(
                            height: 80.adaptSize,
                            width: 80.adaptSize,
                            padding: EdgeInsets.symmetric(vertical: 1.v),
                            decoration: AppDecoration.fillIndigoA.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder40,
                            ),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMemojiBoys41576x73,
                              height: 76.v,
                              width: 73.h,
                              radius: BorderRadius.circular(
                                40.h,
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 24.h,
                              top: 13.v,
                              bottom: 13.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_kitsbase".tr,
                                  style: theme.textTheme.titleMedium,
                                ),
                                SizedBox(height: 11.v),
                                Text(
                                  "msg_hi_kitsbase_gmail_com".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  _buildReferralCode(context),
                  SizedBox(height: 31.v),
                  Opacity(
                    opacity: 0.4,
                    child: Divider(
                      color: appTheme.lightGreen50066.withOpacity(0.49),
                    ),
                  ),
                  SizedBox(height: 31.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildSettings(
                      context,
                      settings: "lbl_billing_payment".tr,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  _buildLanguage(context),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildSettings(
                      context,
                      settings: "lbl_settings".tr,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: _buildSettings(
                      context,
                      settings: "lbl_faq".tr,
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildSupport(context),
                  SizedBox(height: 6.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarSubtitle(
        text: "lbl_profile".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_edit_profile".tr,
          margin: EdgeInsets.fromLTRB(24.h, 19.v, 24.h, 18.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildReferralCode(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillLightGreen.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgClosePink500,
            height: 32.adaptSize,
            width: 32.adaptSize,
            margin: EdgeInsets.symmetric(vertical: 7.v),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                right: 5.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_referral_code".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_share_your_friend".tr,
                    style: CustomTextStyles.bodySmallOnPrimaryContainer,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLanguage(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(4.h),
            decoration: IconButtonStyleHelper.fillPinkTL12,
            child: CustomImageView(
              imagePath: ImageConstant.imgIconOnprimarycontainer32x32,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 9.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_language".tr,
              style: theme.textTheme.titleSmall,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 9.v,
              bottom: 4.v,
            ),
            child: Text(
              "lbl_english".tr,
              style: CustomTextStyles.titleSmallGray600,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 4.v,
              bottom: 4.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSupport(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      padding: EdgeInsets.all(14.h),
      decoration: AppDecoration.fillPrimary.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillGray,
            child: CustomImageView(
              imagePath: ImageConstant.imgSettingsPink500,
            ),
          ),
          Container(
            width: 185.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 8.v,
              bottom: 5.v,
            ),
            child: Text(
              "msg_we_d_love_to_hear".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodySmallOnErrorContainer.copyWith(
                height: 1.33,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightOnerrorcontainer,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.fromLTRB(24.h, 12.v, 2.h, 12.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildSettings(
    BuildContext context, {
    required String settings,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          padding: EdgeInsets.all(4.h),
          decoration: IconButtonStyleHelper.fillPinkTL12,
          child: CustomImageView(
            imagePath: ImageConstant.imgThumbsUpGreen50,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.h,
            top: 9.v,
            bottom: 4.v,
          ),
          child: Text(
            settings,
            style: theme.textTheme.titleSmall!.copyWith(
              color: theme.colorScheme.onPrimaryContainer,
            ),
          ),
        ),
        Spacer(),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 4.v),
        ),
      ],
    );
  }
}
