import 'bloc/portfolio_v1_scroll_bloc.dart';
import 'models/portfolio_v1_scroll_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/home_vone_page/home_vone_page.dart';
import 'package:hari_s_application3/presentation/no_order_tab_container_page/no_order_tab_container_page.dart';
import 'package:hari_s_application3/presentation/portfolio_vtwo_page/portfolio_vtwo_page.dart';
import 'package:hari_s_application3/presentation/profile_page/profile_page.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_bottom_bar.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_icon_button.dart';

class PortfolioV1ScrollScreen extends StatelessWidget {
  PortfolioV1ScrollScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PortfolioV1ScrollBloc>(
      create: (context) => PortfolioV1ScrollBloc(PortfolioV1ScrollState(
        portfolioV1ScrollModelObj: PortfolioV1ScrollModel(),
      ))
        ..add(PortfolioV1ScrollInitialEvent()),
      child: PortfolioV1ScrollScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PortfolioV1ScrollBloc, PortfolioV1ScrollState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.gray50,
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 18.v),
                  _buildInfo(context),
                  SizedBox(height: 32.v),
                  Container(
                    padding: EdgeInsets.all(24.h),
                    decoration: AppDecoration.fillOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.customBorderTL32,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildChart(context),
                        SizedBox(height: 44.v),
                        _buildTopStocks(context),
                        SizedBox(height: 81.v),
                      ],
                    ),
                  ),
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
      title: AppbarSubtitle(
        text: "lbl_portfolio".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLightBulb,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInfo(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 24.h,
        right: 40.h,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 48.adaptSize,
            width: 48.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillPrimaryTL24,
            child: CustomImageView(
              imagePath: ImageConstant.imgButtonsFloatRest,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              children: [
                Text(
                  "lbl_today_gains".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 7.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_2202".tr,
                        style: CustomTextStyles.titleMedium16,
                      ),
                      TextSpan(
                        text: "lbl_42".tr,
                        style: CustomTextStyles.labelLargeBluegray400,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
          Spacer(),
          Opacity(
            opacity: 0.2,
            child: SizedBox(
              height: 48.v,
              child: VerticalDivider(
                width: 1.h,
                thickness: 1.v,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h),
            child: CustomIconButton(
              height: 48.adaptSize,
              width: 48.adaptSize,
              padding: EdgeInsets.all(12.h),
              decoration: IconButtonStyleHelper.fillPink,
              child: CustomImageView(
                imagePath: ImageConstant.imgIconsChartUp,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_overall_loss".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 9.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_5200".tr,
                        style: CustomTextStyles.titleMedium16,
                      ),
                      TextSpan(
                        text: "lbl_11".tr,
                        style: CustomTextStyles.labelLargeBluegray400,
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
    );
  }

  /// Section Widget
  Widget _buildChart(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 176.v,
              width: 327.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  _buildItem(
                    context,
                    priceText: "lbl_100k".tr,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildItem(
                          context,
                          priceText: "lbl_75k".tr,
                        ),
                        SizedBox(height: 24.v),
                        _buildItem(
                          context,
                          priceText: "lbl_50k".tr,
                        ),
                        SizedBox(height: 24.v),
                        _buildItem(
                          context,
                          priceText: "lbl_25k".tr,
                        ),
                      ],
                    ),
                  ),
                  _buildItem(
                    context,
                    priceText: "lbl_02".tr,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            height: 80.v,
                            width: 24.h,
                            margin: EdgeInsets.only(top: 80.v),
                            decoration: BoxDecoration(
                              color: appTheme.indigoA10001,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.h),
                                topRight: Radius.circular(24.h),
                                bottomLeft: Radius.circular(4.h),
                                bottomRight: Radius.circular(4.h),
                              ),
                            ),
                          ),
                          Container(
                            height: 120.v,
                            width: 106.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 40.v,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: 32.v,
                                    width: 24.h,
                                    decoration: BoxDecoration(
                                      color: appTheme.indigoA10001,
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(24.h),
                                        topRight: Radius.circular(24.h),
                                        bottomLeft: Radius.circular(4.h),
                                        bottomRight: Radius.circular(4.h),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 120.v,
                                    width: 85.h,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: 120.v,
                                            width: 24.h,
                                            margin: EdgeInsets.only(left: 20.h),
                                            decoration: BoxDecoration(
                                              color: appTheme.pink500,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24.h),
                                                topRight: Radius.circular(24.h),
                                                bottomLeft:
                                                    Radius.circular(4.h),
                                                bottomRight:
                                                    Radius.circular(4.h),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Container(
                                            height: 64.v,
                                            width: 24.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.indigoA10001,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(24.h),
                                                topRight: Radius.circular(24.h),
                                                bottomLeft:
                                                    Radius.circular(4.h),
                                                bottomRight:
                                                    Radius.circular(4.h),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Container(
                                            width: 64.h,
                                            margin: EdgeInsets.only(top: 24.v),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 7.h,
                                              vertical: 1.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlineTeal
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder10,
                                            ),
                                            child: Text(
                                              "lbl_74_902".tr,
                                              style: CustomTextStyles
                                                  .labelLargeOnErrorContainer,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 96.v,
                            width: 24.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 64.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.indigoA10001,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.h),
                                topRight: Radius.circular(24.h),
                                bottomLeft: Radius.circular(4.h),
                                bottomRight: Radius.circular(4.h),
                              ),
                            ),
                          ),
                          Container(
                            height: 160.v,
                            width: 24.h,
                            margin: EdgeInsets.only(left: 17.h),
                            decoration: BoxDecoration(
                              color: appTheme.indigoA10001,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.h),
                                topRight: Radius.circular(24.h),
                                bottomLeft: Radius.circular(4.h),
                                bottomRight: Radius.circular(4.h),
                              ),
                            ),
                          ),
                          Container(
                            height: 72.v,
                            width: 24.h,
                            margin: EdgeInsets.only(
                              left: 17.h,
                              top: 88.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.indigoA10001,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(24.h),
                                topRight: Radius.circular(24.h),
                                bottomLeft: Radius.circular(4.h),
                                bottomRight: Radius.circular(4.h),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 11.v),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 56.h,
                  right: 8.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "lbl_mo".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25.h),
                      child: Text(
                        "lbl_tu".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "lbl_we".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 24.h),
                      child: Text(
                        "lbl_th".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 29.h),
                      child: Text(
                        "lbl_fr".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 27.h),
                      child: Text(
                        "lbl_sa".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 26.h),
                      child: Text(
                        "lbl_su".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 23.v),
        Padding(
          padding: EdgeInsets.only(
            left: 23.h,
            right: 26.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_12h".tr,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
              Spacer(
                flex: 28,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_1d".tr,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
              Spacer(
                flex: 20,
              ),
              CustomElevatedButton(
                height: 24.v,
                width: 46.h,
                text: "lbl_1w".tr,
                buttonStyle: CustomButtonStyles.fillPink,
                buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer,
              ),
              Spacer(
                flex: 20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_1m".tr,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
              Spacer(
                flex: 30,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 4.v,
                  bottom: 3.v,
                ),
                child: Text(
                  "lbl_1y".tr,
                  style: CustomTextStyles.labelLargeGray900,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTopStocks(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "lbl_top_stocks".tr,
              style: CustomTextStyles.titleMediumGray900_1,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text(
                "lbl_view_all".tr,
                style: CustomTextStyles.titleSmallPink500,
              ),
            ),
          ],
        ),
        SizedBox(height: 32.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
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
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgChartBlue70032x80,
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
                    "lbl_63_98".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 6.v),
                  _buildPercent(
                    context,
                    forwardImage: ImageConstant.imgForwardBlue700,
                    textLabel: "lbl_0_23".tr,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 34.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGoogle,
              height: 41.v,
              width: 40.h,
              margin: EdgeInsets.only(bottom: 4.v),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_googl".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "lbl_alphabet_inc".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgChartOnprimary,
              height: 32.v,
              width: 80.h,
              margin: EdgeInsets.only(
                left: 23.h,
                top: 5.v,
                bottom: 9.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                bottom: 1.v,
              ),
              child: Column(
                children: [
                  Text(
                    "lbl_2_84k".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 7.v),
                  _buildPercent(
                    context,
                    forwardImage: ImageConstant.imgForward,
                    textLabel: "lbl_0_58".tr,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
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

  /// Common widget
  Widget _buildItem(
    BuildContext context, {
    required String priceText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          priceText,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
        Expanded(
          child: Opacity(
            opacity: 0.2,
            child: Padding(
              padding: EdgeInsets.only(
                top: 6.v,
                bottom: 8.v,
              ),
              child: Divider(
                color: appTheme.pink500.withOpacity(0.42),
                indent: 19.h,
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildPercent(
    BuildContext context, {
    required String forwardImage,
    required String textLabel,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: forwardImage,
          height: 6.v,
          width: 8.h,
          radius: BorderRadius.circular(
            1.h,
          ),
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 5.v,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 4.h),
          child: Text(
            textLabel,
            style: CustomTextStyles.labelLargeOnPrimary.copyWith(
              color: theme.colorScheme.onPrimary.withOpacity(1),
            ),
          ),
        ),
      ],
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
