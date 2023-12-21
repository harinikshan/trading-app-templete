import 'bloc/otp_authentication_bloc.dart';import 'models/otp_authentication_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_elevated_button.dart';class OtpAuthenticationScreen extends StatelessWidget {const OtpAuthenticationScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OtpAuthenticationBloc>(create: (context) => OtpAuthenticationBloc(OtpAuthenticationState(otpAuthenticationModelObj: OtpAuthenticationModel()))..add(OtpAuthenticationInitialEvent()), child: OtpAuthenticationScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<OtpAuthenticationBloc, OtpAuthenticationState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 54.h, top: 76.v, right: 54.h), child: Column(children: [Container(height: 140.adaptSize, width: 140.adaptSize, padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 18.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder70), child: CustomImageView(imagePath: ImageConstant.imgGroupPrimary104x85, height: 104.v, width: 85.h, alignment: Alignment.center)), SizedBox(height: 44.v), Text("msg_secure_your_account".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 17.v), SizedBox(width: 266.h, child: Text("msg_one_way_we_keep".tr, maxLines: 3, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyMedium!.copyWith(height: 1.71))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinueButton(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapClose(context);})); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 60.v)); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
