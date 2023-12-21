import 'bloc/exchange_buy_stock_active_state_bloc.dart';
import 'models/exchange_buy_stock_active_state_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ExchangeBuyStockActiveStatePage extends StatefulWidget {
  const ExchangeBuyStockActiveStatePage({Key? key})
      : super(
          key: key,
        );

  @override
  ExchangeBuyStockActiveStatePageState createState() =>
      ExchangeBuyStockActiveStatePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ExchangeBuyStockActiveStateBloc>(
      create: (context) =>
          ExchangeBuyStockActiveStateBloc(ExchangeBuyStockActiveStateState(
        exchangeBuyStockActiveStateModelObj: ExchangeBuyStockActiveStateModel(),
      ))
            ..add(ExchangeBuyStockActiveStateInitialEvent()),
      child: ExchangeBuyStockActiveStatePage(),
    );
  }
}

class ExchangeBuyStockActiveStatePageState
    extends State<ExchangeBuyStockActiveStatePage>
    with AutomaticKeepAliveClientMixin<ExchangeBuyStockActiveStatePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ExchangeBuyStockActiveStateBloc,
        ExchangeBuyStockActiveStateState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnErrorContainer,
              child: Column(
                children: [
                  SizedBox(height: 31.v),
                  _buildExchangeStack(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildExchangeStack(BuildContext context) {
    return Container(
      height: 280.v,
      width: 327.h,
      margin: EdgeInsets.symmetric(horizontal: 24.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 25.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgItem,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildNasdaqRow(
                    context,
                    dynamicText: "lbl_spot_spotify".tr,
                  ),
                  SizedBox(height: 18.v),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsGreenA70032x32,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 6.h,
                          top: 8.v,
                          bottom: 8.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_226".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              TextSpan(
                                text: "lbl_90".tr,
                                style: CustomTextStyles.titleMediumGray90016,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 48.adaptSize,
              width: 48.adaptSize,
              decoration: AppDecoration.outlineOnPrimary,
              child: CustomIconButton(
                height: 48.adaptSize,
                width: 48.adaptSize,
                padding: EdgeInsets.all(12.h),
                decoration: IconButtonStyleHelper.fillPink,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgShare,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 25.v,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: fs.Svg(
                    ImageConstant.imgGroup41,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildNasdaqRow(
                    context,
                    dynamicText: "msg_aapl_apple_inc".tr,
                  ),
                  SizedBox(height: 18.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgCloseOnprimarycontainer,
                        height: 32.v,
                        width: 27.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDownOnprimarycontainer,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          top: 8.v,
                          bottom: 9.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 18.h,
                          top: 2.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "lbl_156".tr,
                                style: theme.textTheme.headlineSmall,
                              ),
                              TextSpan(
                                text: "lbl_50".tr,
                                style: CustomTextStyles.titleMediumGray90016,
                              ),
                              TextSpan(
                                text: "lbl3".tr,
                                style: CustomTextStyles.headlineSmallPink500,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgCalculator,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          top: 4.v,
                          bottom: 5.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7.v),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildNasdaqRow(
    BuildContext context, {
    required String dynamicText,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_aapl2".tr,
                  style: CustomTextStyles.titleMedium16,
                ),
                TextSpan(
                  text: "lbl_apple_inc".tr,
                  style: CustomTextStyles.labelLargeGray900_2,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgSettingsPinkA100,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }
}
