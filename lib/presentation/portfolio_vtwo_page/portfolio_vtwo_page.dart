import '../portfolio_vtwo_page/widgets/stockitem1_item_widget.dart';
import 'bloc/portfolio_vtwo_bloc.dart';
import 'models/portfolio_vtwo_model.dart';
import 'models/stockitem1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class PortfolioVtwoPage extends StatelessWidget {
  const PortfolioVtwoPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PortfolioVtwoBloc>(
      create: (context) => PortfolioVtwoBloc(PortfolioVtwoState(
        portfolioVtwoModelObj: PortfolioVtwoModel(),
      ))
        ..add(PortfolioVtwoInitialEvent()),
      child: PortfolioVtwoPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              _buildPortfolioBalance(context),
              SizedBox(height: 33.v),
              _buildTopStocks(context),
            ],
          ),
        ),
      ),
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
  Widget _buildPortfolioBalance(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_portfolio_balance".tr,
            style: CustomTextStyles.labelLargeGray600,
          ),
          SizedBox(height: 7.v),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_31_082".tr,
                        style: CustomTextStyles.displaySmallOnPrimaryContainer,
                      ),
                      TextSpan(
                        text: "lbl_20".tr,
                        style: CustomTextStyles.headlineSmallGray900_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              CustomElevatedButton(
                height: 20.v,
                width: 62.h,
                text: "lbl_810".tr,
                margin: EdgeInsets.only(
                  left: 12.h,
                  top: 12.v,
                  bottom: 17.v,
                ),
                buttonStyle: CustomButtonStyles.fillPink,
                buttonTextStyle: CustomTextStyles.labelLargeOnErrorContainer,
              ),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: CustomIconButton(
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillIndigoA,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIconsBell,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_1_208_242".tr,
                  style: theme.textTheme.titleSmall,
                ),
                TextSpan(
                  text: "lbl_today".tr,
                  style: CustomTextStyles.bodyMediumPink500,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTopStocks(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 28.v,
      ),
      decoration: AppDecoration.fillOnErrorContainer.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_top_stocks".tr,
                style: theme.textTheme.titleMedium,
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
          BlocSelector<PortfolioVtwoBloc, PortfolioVtwoState,
              PortfolioVtwoModel?>(
            selector: (state) => state.portfolioVtwoModelObj,
            builder: (context, portfolioVtwoModelObj) {
              return ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    height: 34.v,
                  );
                },
                itemCount:
                    portfolioVtwoModelObj?.stockitem1ItemList.length ?? 0,
                itemBuilder: (context, index) {
                  Stockitem1ItemModel model =
                      portfolioVtwoModelObj?.stockitem1ItemList[index] ??
                          Stockitem1ItemModel();
                  return Stockitem1ItemWidget(
                    model,
                  );
                },
              );
            },
          ),
          SizedBox(height: 73.v),
        ],
      ),
    );
  }
}
