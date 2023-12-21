import 'bloc/no_order_bloc.dart';
import 'models/no_order_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/widgets/custom_elevated_button.dart';
import 'package:hari_s_application3/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class NoOrderPage extends StatefulWidget {
  const NoOrderPage({Key? key})
      : super(
          key: key,
        );

  @override
  NoOrderPageState createState() => NoOrderPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoOrderBloc>(
      create: (context) => NoOrderBloc(NoOrderState(
        noOrderModelObj: NoOrderModel(),
      ))
        ..add(NoOrderInitialEvent()),
      child: NoOrderPage(),
    );
  }
}

class NoOrderPageState extends State<NoOrderPage>
    with AutomaticKeepAliveClientMixin<NoOrderPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NoOrderBloc, NoOrderState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillOnErrorContainer,
              child: Column(
                children: [
                  SizedBox(height: 78.v),
                  _buildViewStocksSection(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildViewStocksSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.all(0),
            color: appTheme.gray10001,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder70,
            ),
            child: Container(
              height: 140.adaptSize,
              width: 140.adaptSize,
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder70,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 16.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: fs.Svg(
                            ImageConstant.imgGroup15,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(height: 22.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevisionGreen50,
                            height: 24.v,
                            width: 64.h,
                          ),
                          SizedBox(height: 6.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevisionGray100,
                            height: 24.v,
                            width: 64.h,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 12.v),
                    child: CustomIconButton(
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      padding: EdgeInsets.all(8.h),
                      decoration: IconButtonStyleHelper.fillPinkA,
                      alignment: Alignment.topCenter,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmarkGray900,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 42.v),
          Text(
            "lbl_not_yet_ordered".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 20.v),
          SizedBox(
            width: 225.h,
            child: Text(
              "msg_there_is_no_recent".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumGray600.copyWith(
                height: 1.71,
              ),
            ),
          ),
          SizedBox(height: 36.v),
          CustomElevatedButton(
            text: "lbl_view_stocks".tr,
          ),
        ],
      ),
    );
  }
}
