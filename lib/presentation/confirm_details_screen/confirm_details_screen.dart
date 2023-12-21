import 'bloc/confirm_details_bloc.dart';import 'models/confirm_details_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_title.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_elevated_button.dart';import 'package:hari_s_application3/widgets/custom_icon_button.dart';class ConfirmDetailsScreen extends StatelessWidget {const ConfirmDetailsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ConfirmDetailsBloc>(create: (context) => ConfirmDetailsBloc(ConfirmDetailsState(confirmDetailsModelObj: ConfirmDetailsModel()))..add(ConfirmDetailsInitialEvent()), child: ConfirmDetailsScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<ConfirmDetailsBloc, ConfirmDetailsState>(builder: (context, state) {return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 8.v), child: Column(children: [SizedBox(height: 24.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 5.v), padding: EdgeInsets.symmetric(vertical: 24.v), decoration: AppDecoration.fillOnErrorContainer.copyWith(borderRadius: BorderRadiusStyle.roundedBorder32), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 19.v), _buildThirtyFive(context), SizedBox(height: 25.v), _buildStockYouBuy(context), SizedBox(height: 25.v), _buildPaymentMethod(context), SizedBox(height: 23.v), Opacity(opacity: 0.2, child: Divider(color: appTheme.lightGreen50066.withOpacity(0.42))), SizedBox(height: 25.v), _buildPaymentDetails(context)]))))])), bottomNavigationBar: _buildContinue(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapClose(context);}), centerTitle: true, title: AppbarTitle(text: "lbl_confirm_order".tr)); } 
/// Section Widget
Widget _buildThirtyFive(BuildContext context) { return Column(children: [Text("lbl_total_cost".tr, style: CustomTextStyles.titleSmallGray600), SizedBox(height: 12.v), RichText(text: TextSpan(children: [TextSpan(text: "lbl_382".tr, style: theme.textTheme.displaySmall), TextSpan(text: "lbl_20".tr, style: CustomTextStyles.headlineSmallGray900_1)]), textAlign: TextAlign.left), SizedBox(height: 38.v), Opacity(opacity: 0.2, child: Divider(color: appTheme.lightGreen50066.withOpacity(0.42)))]); } 
/// Section Widget
Widget _buildStockYouBuy(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_stock_you_buy".tr, style: theme.textTheme.bodySmall), SizedBox(height: 14.v), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.v), decoration: AppDecoration.fillPink50.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgCloseOnprimarycontainer, height: 32.v, width: 27.h, margin: EdgeInsets.symmetric(vertical: 6.v)), Padding(padding: EdgeInsets.only(left: 18.h, top: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_aapl".tr, style: theme.textTheme.titleSmall), SizedBox(height: 5.v), Text("lbl_apple_inc2".tr, style: theme.textTheme.bodySmall)])), Spacer(), Padding(padding: EdgeInsets.only(top: 14.v, bottom: 12.v), child: Text("lbl_127_00".tr, style: theme.textTheme.titleSmall))]))])); } 
/// Section Widget
Widget _buildPaymentMethod(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_payment_method2".tr, style: theme.textTheme.bodySmall), SizedBox(height: 14.v), Container(padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v), decoration: AppDecoration.fillGray100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder16), child: Row(children: [Padding(padding: EdgeInsets.symmetric(vertical: 5.v), child: CustomIconButton(height: 32.adaptSize, width: 32.adaptSize, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.fillIndigoATL12, child: CustomImageView(imagePath: ImageConstant.imgTelevisionPink50032x32))), Padding(padding: EdgeInsets.only(left: 16.h, top: 4.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_kitsbase".tr, style: CustomTextStyles.titleSmallGray900_1), SizedBox(height: 4.v), Text("msg".tr, style: theme.textTheme.bodySmall)]))]))])); } 
/// Section Widget
Widget _buildPaymentDetails(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Text("lbl_payment_details".tr, style: theme.textTheme.bodySmall)), SizedBox(height: 14.v), _buildApproxSharePrice(context, userImage: ImageConstant.imgUserPink50024x24, approxSharePriceText: "lbl_funding_source".tr, priceText: "lbl_tradebase".tr), SizedBox(height: 16.v), _buildApproxSharePrice(context, userImage: ImageConstant.imgUser24x24, approxSharePriceText: "msg_approx_share_price".tr, priceText: "lbl_382_20".tr), SizedBox(height: 16.v), _buildApproxSharePrice(context, userImage: ImageConstant.imgIconPink500, approxSharePriceText: "lbl_approx_shares".tr, priceText: "lbl_2_202".tr), SizedBox(height: 16.v), _buildApproxSharePrice(context, userImage: ImageConstant.imgContrastPink50024x24, approxSharePriceText: "lbl_fee".tr, priceText: "lbl_4_20".tr)])); } 
/// Section Widget
Widget _buildContinue(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 60.v)); } 
/// Common widget
Widget _buildApproxSharePrice(BuildContext context, {required String userImage, required String approxSharePriceText, required String priceText, }) { return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.end, children: [CustomImageView(imagePath: userImage, height: 24.adaptSize, width: 24.adaptSize), Padding(padding: EdgeInsets.only(left: 16.h, top: 5.v), child: Text(approxSharePriceText, style: CustomTextStyles.bodyMediumGray900.copyWith(color: appTheme.gray900))), Spacer(), Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text(priceText, style: CustomTextStyles.titleSmallGray900_1.copyWith(color: appTheme.gray900)))]); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }