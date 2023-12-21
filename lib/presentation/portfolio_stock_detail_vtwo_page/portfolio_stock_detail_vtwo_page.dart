import 'bloc/portfolio_stock_detail_vtwo_bloc.dart';
import 'models/portfolio_stock_detail_vtwo_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PortfolioStockDetailVtwoPage extends StatefulWidget {
  const PortfolioStockDetailVtwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  PortfolioStockDetailVtwoPageState createState() =>
      PortfolioStockDetailVtwoPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PortfolioStockDetailVtwoBloc>(
      create: (context) =>
          PortfolioStockDetailVtwoBloc(PortfolioStockDetailVtwoState(
        portfolioStockDetailVtwoModelObj: PortfolioStockDetailVtwoModel(),
      ))
            ..add(PortfolioStockDetailVtwoInitialEvent()),
      child: PortfolioStockDetailVtwoPage(),
    );
  }
}

class PortfolioStockDetailVtwoPageState
    extends State<PortfolioStockDetailVtwoPage>
    with AutomaticKeepAliveClientMixin<PortfolioStockDetailVtwoPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PortfolioStockDetailVtwoBloc,
        PortfolioStockDetailVtwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnErrorContainer,
              child: Column(
                children: [
                  SizedBox(height: 16.v),
                  Column(
                    children: [
                      _buildChart(context),
                      SizedBox(height: 26.v),
                      _buildBuy(context),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildChart(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 24.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_280".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_260".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_240".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 24.v),
                Text(
                  "lbl_220".tr,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 24.v),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "lbl_200".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 192.v,
            width: 279.h,
            margin: EdgeInsets.only(
              left: 16.h,
              top: 7.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 255.h,
                    margin: EdgeInsets.only(
                      left: 10.h,
                      right: 13.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: SizedBox(
                                height: 160.v,
                                child: VerticalDivider(
                                  width: 1.h,
                                  thickness: 1.v,
                                ),
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_mo".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        _buildTimeframeTh(
                          context,
                          dynamicProperty2: "lbl_tu".tr,
                        ),
                        Column(
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.h),
                                  child: SizedBox(
                                    height: 160.v,
                                    child: VerticalDivider(
                                      width: 1.h,
                                      thickness: 1.v,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_we".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        _buildTimeframeTh(
                          context,
                          dynamicProperty2: "lbl_th".tr,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Opacity(
                              opacity: 0.4,
                              child: Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: SizedBox(
                                  height: 160.v,
                                  child: VerticalDivider(
                                    width: 1.h,
                                    thickness: 1.v,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Text(
                              "lbl_fr".tr,
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                        _buildTimeframeSu(
                          context,
                          dynamicProperty2: "lbl_sa".tr,
                        ),
                        _buildTimeframeSu(
                          context,
                          dynamicProperty2: "lbl_su".tr,
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgLineChart,
                  height: 80.v,
                  width: 272.h,
                  alignment: Alignment.bottomCenter,
                  margin: EdgeInsets.only(bottom: 32.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChartPink500141x259,
                  height: 141.v,
                  width: 259.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    left: 4.h,
                    top: 5.v,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 20.v,
                    width: 279.h,
                    margin: EdgeInsets.only(top: 64.v),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 279.h,
                            child: Divider(
                              color: theme.colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: 64.h,
                            margin: EdgeInsets.only(left: 89.h),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.h,
                              vertical: 1.v,
                            ),
                            decoration: AppDecoration.outlineTeal.copyWith(
                              borderRadius: BorderRadiusStyle.circleBorder10,
                            ),
                            child: Text(
                              "lbl_244_21".tr,
                              style:
                                  CustomTextStyles.labelLargeOnErrorContainer,
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
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuy(BuildContext context) {
    return SizedBox(
      height: 239.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_statistics".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 18.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 22.h,
                      vertical: 24.v,
                    ),
                    decoration: AppDecoration.fillGray5001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 4.h,
                            right: 6.h,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Column(
                                  children: [
                                    Text(
                                      "lbl_open".tr,
                                      style: CustomTextStyles.labelLargeGray600,
                                    ),
                                    SizedBox(height: 9.v),
                                    Text(
                                      "lbl_224_54".tr,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: _buildStatisticsLow(
                                  context,
                                  lowText: "lbl_high".tr,
                                  numberText: "lbl_227_29".tr,
                                ),
                              ),
                              _buildStatisticsLow(
                                context,
                                lowText: "lbl_low".tr,
                                numberText: "lbl_224_10".tr,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 26.v),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "lbl_volume".tr,
                                  style: CustomTextStyles.labelLargeGray600,
                                ),
                                SizedBox(height: 11.v),
                                Text(
                                  "lbl_834_146".tr,
                                  style: CustomTextStyles.titleMediumGray900_1,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "lbl_avg_volume".tr,
                                  style: CustomTextStyles.labelLargeGray600,
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "lbl_1_461_009".tr,
                                  style: CustomTextStyles.titleMediumGray900_1,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "lbl_market_cap".tr,
                                  style: CustomTextStyles.labelLargeGray600,
                                ),
                                SizedBox(height: 9.v),
                                Text(
                                  "lbl_43_419b".tr,
                                  style: CustomTextStyles.titleMediumGray900_1,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 119.v),
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 16.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      text: "lbl_buy".tr,
                      margin: EdgeInsets.only(
                        right: 7.h,
                        bottom: 24.v,
                      ),
                      buttonStyle: CustomButtonStyles.fillPinkTL24,
                    ),
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      text: "lbl_sell".tr,
                      margin: EdgeInsets.only(
                        left: 7.h,
                        bottom: 24.v,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTimeframeTh(
    BuildContext context, {
    required String dynamicProperty2,
  }) {
    return Column(
      children: [
        Opacity(
          opacity: 0.4,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: SizedBox(
                height: 160.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.v),
        Text(
          dynamicProperty2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTimeframeSu(
    BuildContext context, {
    required String dynamicProperty2,
  }) {
    return Column(
      children: [
        Opacity(
          opacity: 0.4,
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 6.h),
              child: SizedBox(
                height: 160.v,
                child: VerticalDivider(
                  width: 1.h,
                  thickness: 1.v,
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 16.v),
        Text(
          dynamicProperty2,
          style: theme.textTheme.bodySmall!.copyWith(
            color: appTheme.gray600,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildStatisticsLow(
    BuildContext context, {
    required String lowText,
    required String numberText,
  }) {
    return Column(
      children: [
        Text(
          lowText,
          style: CustomTextStyles.labelLargeGray600.copyWith(
            color: appTheme.gray600,
          ),
        ),
        SizedBox(height: 10.v),
        Text(
          numberText,
          style: theme.textTheme.titleMedium!.copyWith(
            color: theme.colorScheme.onPrimaryContainer,
          ),
        ),
      ],
    );
  }
}
