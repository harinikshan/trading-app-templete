import '../home_vone_page/widgets/stockitem_item_widget.dart';
import 'bloc/home_vone_bloc.dart';
import 'models/home_vone_model.dart';
import 'models/stockitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_circleimage.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class HomeVonePage extends StatelessWidget {
  const HomeVonePage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeVoneBloc>(
      create: (context) => HomeVoneBloc(HomeVoneState(
        homeVoneModelObj: HomeVoneModel(),
      ))
        ..add(HomeVoneInitialEvent()),
      child: HomeVonePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 10.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 11.v),
              _buildTotalBalance(context),
              SizedBox(height: 26.v),
              _buildPortfolio(context),
              SizedBox(height: 26.v),
              _buildYourWatchlist(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 72.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 24.h,
          top: 4.v,
          bottom: 4.v,
        ),
        decoration: AppDecoration.fillIndigoA.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: AppbarCircleimage(
          imagePath: ImageConstant.imgMemojiBoys415,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_hi_kitsbase".tr,
              margin: EdgeInsets.only(right: 45.h),
            ),
            SizedBox(height: 4.v),
            AppbarSubtitleTwo(
              text: "msg_welcome_to_tradebase".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCloseIndigoA10001,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTotalBalance(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.all(24.h),
        decoration: AppDecoration.gradientPrimaryToPink.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "msg_your_total_balance".tr,
              style: CustomTextStyles.labelLargeOnErrorContainer,
            ),
            SizedBox(height: 10.v),
            Padding(
              padding: EdgeInsets.only(right: 37.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_12_031_082".tr,
                          style: CustomTextStyles.headlineSmallOnErrorContainer,
                        ),
                        TextSpan(
                          text: "lbl_20".tr,
                          style: CustomTextStyles.titleMediumOnErrorContainer,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  CustomElevatedButton(
                    height: 20.v,
                    width: 62.h,
                    text: "lbl_810".tr,
                    margin: EdgeInsets.only(
                      left: 8.h,
                      bottom: 10.v,
                    ),
                    buttonStyle: CustomButtonStyles.outlineOnPrimary,
                    buttonTextStyle: CustomTextStyles.labelLargePink500,
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Text(
              "lbl_1_208_24".tr,
              style: CustomTextStyles.titleSmallOnErrorContainer_1,
            ),
            SizedBox(height: 25.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 15.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillOnErrorContainer.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder20,
              ),
              child: Row(
                children: [
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.lightGreen50066,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "lbl_appl_70".tr,
                      style: CustomTextStyles.labelLargeGray900,
                    ),
                  ),
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      left: 13.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.pink500,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.orange20066,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "lbl_msft_20".tr,
                      style: CustomTextStyles.labelLargeGray900,
                    ),
                  ),
                  Container(
                    height: 8.adaptSize,
                    width: 8.adaptSize,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 4.v,
                      bottom: 4.v,
                    ),
                    decoration: BoxDecoration(
                      color: appTheme.indigoA10001,
                      borderRadius: BorderRadius.circular(
                        4.h,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.indigoA10066,
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(
                            0,
                            8,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 1.v,
                    ),
                    child: Text(
                      "lbl_ba_9".tr,
                      style: CustomTextStyles.labelLargeGray900,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPortfolio(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
              children: [
                Text(
                  "lbl_portfolio".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 197.h,
                    top: 3.v,
                  ),
                  child: Text(
                    "lbl_view_all".tr,
                    style: CustomTextStyles.titleSmallPink500,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 18.v),
          SizedBox(
            height: 166.v,
            child: BlocSelector<HomeVoneBloc, HomeVoneState, HomeVoneModel?>(
              selector: (state) => state.homeVoneModelObj,
              builder: (context, homeVoneModelObj) {
                return ListView.separated(
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 16.h,
                    );
                  },
                  itemCount: homeVoneModelObj?.stockitemItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    StockitemItemModel model =
                        homeVoneModelObj?.stockitemItemList[index] ??
                            StockitemItemModel();
                    return StockitemItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYourWatchlist(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_your_watchlist".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 26.v),
          Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTrash,
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
                        "lbl_twtr".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                      SizedBox(height: 6.v),
                      Text(
                        "lbl_twitter_inc".tr,
                        style: theme.textTheme.labelLarge,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChart,
                  height: 32.v,
                  width: 80.h,
                  margin: EdgeInsets.only(
                    left: 35.h,
                    top: 8.v,
                    bottom: 8.v,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 17.h,
                    top: 2.v,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "lbl_63_98".tr,
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
                              imagePath: ImageConstant.imgForward,
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
                                "lbl_0_23".tr,
                                style: CustomTextStyles.labelLargeOnPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
