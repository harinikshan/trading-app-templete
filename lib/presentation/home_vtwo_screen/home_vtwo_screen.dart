import 'bloc/home_vtwo_bloc.dart';
import 'models/home_vtwo_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/home_vone_page/home_vone_page.dart';
import 'package:hari_s_application3/presentation/no_order_tab_container_page/no_order_tab_container_page.dart';
import 'package:hari_s_application3/presentation/portfolio_vtwo_page/portfolio_vtwo_page.dart';
import 'package:hari_s_application3/presentation/profile_page/profile_page.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_circleimage.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_bottom_bar.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

class HomeVtwoScreen extends StatelessWidget {
  HomeVtwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeVtwoBloc>(
      create: (context) => HomeVtwoBloc(HomeVtwoState(
        homeVtwoModelObj: HomeVtwoModel(),
      ))
        ..add(HomeVtwoInitialEvent()),
      child: HomeVtwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeVtwoBloc, HomeVtwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 22.v),
              child: Column(
                children: [
                  _buildTotalBalance(context),
                  SizedBox(height: 26.v),
                  _buildStocks(context),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
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
    return Container(
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
    );
  }

  /// Section Widget
  Widget _buildStocks(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 24.h),
                child: Row(
                  children: [
                    Text(
                      "lbl_stocks".tr,
                      style: theme.textTheme.titleMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 213.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                      child: Text(
                        "lbl_view_all".tr,
                        style: CustomTextStyles.titleSmallPink500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 42.v),
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 147.h,
                        margin: EdgeInsets.only(right: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFacebook,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              margin: EdgeInsets.only(bottom: 1.v),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 2.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_fb".tr,
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 7.v),
                                  Text(
                                    "lbl_facebook_inc".tr,
                                    style: theme.textTheme.labelLarge,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Row(
                        children: [
                          SizedBox(
                            height: 56.v,
                            child: VerticalDivider(
                              width: 2.h,
                              thickness: 2.v,
                              color: appTheme.pink500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 16.h,
                              top: 2.v,
                              bottom: 2.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 143.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "lbl_365".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray900_3,
                                            ),
                                            TextSpan(
                                              text: "lbl2".tr,
                                              style: CustomTextStyles
                                                  .titleMediumGray900_2,
                                            ),
                                            TextSpan(
                                              text: "lbl_51".tr,
                                              style: CustomTextStyles
                                                  .titleSmallGray900,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                      CustomElevatedButton(
                                        height: 20.v,
                                        width: 69.h,
                                        text: "lbl_0_59".tr,
                                        buttonStyle:
                                            CustomButtonStyles.fillPink,
                                        buttonTextStyle: CustomTextStyles
                                            .labelLargeOnErrorContainer,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 9.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_367".tr,
                                        style: CustomTextStyles
                                            .titleSmallGray900_2,
                                      ),
                                      TextSpan(
                                        text: "lbl_67".tr,
                                        style: CustomTextStyles
                                            .labelLargeGray900_1,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 75.h),
                    child: SizedBox(
                      height: 120.v,
                      child: VerticalDivider(
                        width: 2.h,
                        thickness: 2.v,
                        color: appTheme.blue700,
                        indent: 64.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      bottom: 2.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 88.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgCloseOnprimarycontainer,
                                height: 48.v,
                                width: 41.h,
                                margin: EdgeInsets.only(bottom: 1.v),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Column(
                                  children: [
                                    Text(
                                      "lbl_aapl".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                    SizedBox(height: 7.v),
                                    Text(
                                      "lbl_apple".tr,
                                      style: theme.textTheme.labelLarge,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 17.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "lbl_149".tr,
                                      style:
                                          CustomTextStyles.titleMediumGray900_3,
                                    ),
                                    TextSpan(
                                      text: "lbl2".tr,
                                      style:
                                          CustomTextStyles.titleMediumGray900_2,
                                    ),
                                    TextSpan(
                                      text: "lbl_622".tr,
                                      style: CustomTextStyles.titleSmallGray900,
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 7.h),
                                child: SizedBox(
                                  height: 20.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                    color: appTheme.blue700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "lbl_149".tr,
                                  style: CustomTextStyles.titleSmallGray900_2,
                                ),
                                TextSpan(
                                  text: "lbl_71".tr,
                                  style: CustomTextStyles.labelLargeGray900_1,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgChartPink500,
                  height: 64.v,
                  width: 220.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChartBlue700,
                  height: 64.v,
                  width: 115.h,
                  margin: EdgeInsets.only(left: 16.h),
                ),
              ],
            ),
            SizedBox(height: 16.v),
            Padding(
              padding: EdgeInsets.only(left: 24.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_30m".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_1h".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_4h".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_1d".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_7d".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 68.h),
                    child: Text(
                      "lbl_30m".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_1h".tr,
                      style: theme.textTheme.labelLarge,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_4h".tr,
                      style: theme.textTheme.labelLarge,
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
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconshome:
        return AppRoutes.homeVonePage;
      case BottomBarEnum.Contrast:
        return AppRoutes.portfolioVtwoPage;
      case BottomBarEnum.Userindigo50:
        return AppRoutes.noOrderTabContainerPage;
      case BottomBarEnum.Lock:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      case AppRoutes.portfolioVtwoPage:
        return PortfolioVtwoPage();
      case AppRoutes.noOrderTabContainerPage:
        return NoOrderTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
