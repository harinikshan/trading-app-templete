import 'bloc/create_authentication_pin_bloc.dart';import 'models/create_authentication_pin_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';class CreateAuthenticationPinScreen extends StatelessWidget {const CreateAuthenticationPinScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<CreateAuthenticationPinBloc>(create: (context) => CreateAuthenticationPinBloc(CreateAuthenticationPinState(createAuthenticationPinModelObj: CreateAuthenticationPinModel()))..add(CreateAuthenticationPinInitialEvent()), child: CreateAuthenticationPinScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<CreateAuthenticationPinBloc, CreateAuthenticationPinState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(height: 708.v, width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 22.v), child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.topCenter, child: Padding(padding: EdgeInsets.only(left: 1.h, top: 10.v), child: Column(mainAxisSize: MainAxisSize.min, children: [Container(height: 140.adaptSize, width: 140.adaptSize, decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder70), child: CustomImageView(imagePath: ImageConstant.imgOval, height: 140.adaptSize, width: 140.adaptSize, radius: BorderRadius.circular(70.0.adaptSize), alignment: Alignment.center)), SizedBox(height: 28.v), Text("lbl_setup_pin".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 19.v), Text("msg_enter_your_pin_number".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 64.v), CustomImageView(imagePath: ImageConstant.imgPin, height: 24.v, width: 216.h)]))), CustomImageView(imagePath: ImageConstant.imgGroupPrimary117x88, height: 117.v, width: 88.h, alignment: Alignment.topCenter)]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapClose(context);})); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }