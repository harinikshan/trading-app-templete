import 'bloc/otp_authentication_phone_number_bloc.dart';import 'models/otp_authentication_phone_number_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/country_pickers.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_elevated_button.dart';import 'package:hari_s_application3/widgets/custom_phone_number.dart';class OtpAuthenticationPhoneNumberScreen extends StatelessWidget {const OtpAuthenticationPhoneNumberScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<OtpAuthenticationPhoneNumberBloc>(create: (context) => OtpAuthenticationPhoneNumberBloc(OtpAuthenticationPhoneNumberState(otpAuthenticationPhoneNumberModelObj: OtpAuthenticationPhoneNumberModel()))..add(OtpAuthenticationPhoneNumberInitialEvent()), child: OtpAuthenticationPhoneNumberScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 36.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_set_up_2_step_verification".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 18.v), Container(width: 307.h, margin: EdgeInsets.only(right: 19.h), child: Text("msg_enter_your_phone".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium!.copyWith(height: 1.71))), SizedBox(height: 36.v),
 BlocBuilder<OtpAuthenticationPhoneNumberBloc, OtpAuthenticationPhoneNumberState>(builder: (context, state) {
  return CustomPhoneNumber();}), SizedBox(height: 5.v)])), bottomNavigationBar: _buildContinueButton(context))); }
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapClose(context);})); } 
/// Section Widget
Widget _buildContinueButton(BuildContext context) { return CustomElevatedButton(text: "lbl_continue".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 60.v)); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
