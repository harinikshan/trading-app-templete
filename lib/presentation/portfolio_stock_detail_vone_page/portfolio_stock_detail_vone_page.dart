import '../portfolio_stock_detail_vone_page/widgets/timeframes_item_widget.dart';
import 'bloc/portfolio_stock_detail_vone_bloc.dart';
import 'models/portfolio_stock_detail_vone_model.dart';
import 'models/timeframes_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class PortfolioStockDetailVonePage extends StatefulWidget {
  const PortfolioStockDetailVonePage({Key? key})
      : super(
          key: key,
        );

  @override
  PortfolioStockDetailVonePageState createState() =>
      PortfolioStockDetailVonePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PortfolioStockDetailVoneBloc>(
      create: (context) =>
          PortfolioStockDetailVoneBloc(PortfolioStockDetailVoneState(
        portfolioStockDetailVoneModelObj: PortfolioStockDetailVoneModel(),
      ))
            ..add(PortfolioStockDetailVoneInitialEvent()),
      child: PortfolioStockDetailVonePage(),
    );
  }
}

class PortfolioStockDetailVonePageState
    extends State<PortfolioStockDetailVonePage>
    with AutomaticKeepAliveClientMixin<PortfolioStockDetailVonePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 42.v),
              Column(
                children: [
                  _buildPrice(context),
                  SizedBox(height: 27.v),
                  _buildBuy(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPrice(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_226".tr,
                  style: CustomTextStyles.displaySmallOnPrimaryContainer,
                ),
                TextSpan(
                  text: "lbl_90".tr,
                  style: CustomTextStyles.headlineSmallBluegray400,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 7.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArrowUpPinkA100,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  top: 5.v,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_2_02_0_90".tr,
                        style: CustomTextStyles.titleSmallPink500_1,
                      ),
                      TextSpan(
                        text: "lbl_today2".tr,
                        style: CustomTextStyles.titleSmallIndigoA10001_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
          SizedBox(height: 40.v),
          Row(
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
                  alignment: Alignment.topLeft,
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
                            _buildTh(
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
                            _buildTh(
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
                            _buildSu(
                              context,
                              dynamicProperty2: "lbl_sa".tr,
                            ),
                            _buildSu(
                              context,
                              dynamicProperty2: "lbl_su".tr,
                            ),
                          ],
                        ),
                      ),
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
                                  borderRadius:
                                      BorderRadiusStyle.circleBorder10,
                                ),
                                child: Text(
                                  "lbl_244_21".tr,
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
            ],
          ),
          SizedBox(height: 23.v),
          BlocSelector<PortfolioStockDetailVoneBloc,
              PortfolioStockDetailVoneState, PortfolioStockDetailVoneModel?>(
            selector: (state) => state.portfolioStockDetailVoneModelObj,
            builder: (context, portfolioStockDetailVoneModelObj) {
              return Wrap(
                runSpacing: 47.5.v,
                spacing: 47.5.h,
                children: List<Widget>.generate(
                  portfolioStockDetailVoneModelObj?.timeframesItemList.length ??
                      0,
                  (index) {
                    TimeframesItemModel model = portfolioStockDetailVoneModelObj
                            ?.timeframesItemList[index] ??
                        TimeframesItemModel();

                    return TimeframesItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<PortfolioStockDetailVoneBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBuy(BuildContext context) {
    return SizedBox(
      height: 189.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.center,
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
                    padding: EdgeInsets.symmetric(horizontal: 22.h),
                    decoration: AppDecoration.fillGray5001.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder24,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 24.v),
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
                                      style: CustomTextStyles
                                          .labelLargeBluegray400_1,
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
                                child: _buildLow(
                                  context,
                                  lowText: "lbl_high".tr,
                                  numberText: "lbl_227_29".tr,
                                ),
                              ),
                              _buildLow(
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
                                  style:
                                      CustomTextStyles.labelLargeBluegray400_1,
                                ),
                                SizedBox(height: 11.v),
                                Text(
                                  "lbl_834_146".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "lbl_avg_volume".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray400_1,
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "lbl_1_461_009".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "lbl_market_cap".tr,
                                  style:
                                      CustomTextStyles.labelLargeBluegray400_1,
                                ),
                                SizedBox(height: 9.v),
                                Text(
                                  "lbl_43_419b".tr,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
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
              margin: EdgeInsets.only(top: 69.v),
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
  Widget _buildTh(
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
  Widget _buildSu(
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
  Widget _buildLow(
    BuildContext context, {
    required String lowText,
    required String numberText,
  }) {
    return Column(
      children: [
        Text(
          lowText,
          style: CustomTextStyles.labelLargeBluegray400_1.copyWith(
            color: appTheme.blueGray400,
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
