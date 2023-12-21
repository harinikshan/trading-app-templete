import 'bloc/my_account_bloc.dart';import 'models/my_account_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/core/utils/validation_functions.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_elevated_button.dart';import 'package:hari_s_application3/widgets/custom_floating_text_field.dart';import 'package:hari_s_application3/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class MyAccountScreen extends StatelessWidget {MyAccountScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<MyAccountBloc>(create: (context) => MyAccountBloc(MyAccountState(myAccountModelObj: MyAccountModel()))..add(MyAccountInitialEvent()), child: MyAccountScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<MyAccountBloc, MyAccountState>(builder: (context, state) {return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 20.v), child: Column(children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: appTheme.indigoA10001, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder60), child: Container(height: 120.adaptSize, width: 120.adaptSize, padding: EdgeInsets.symmetric(vertical: 1.v), decoration: AppDecoration.fillIndigoA.copyWith(borderRadius: BorderRadiusStyle.circleBorder60), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgMemojiBoys415118x114, height: 118.v, width: 114.h, radius: BorderRadius.circular(60.h), alignment: Alignment.centerLeft), Padding(padding: EdgeInsets.only(bottom: 7.v), child: CustomIconButton(height: 40.adaptSize, width: 40.adaptSize, padding: EdgeInsets.all(8.h), decoration: IconButtonStyleHelper.outlineOnErrorContainer, alignment: Alignment.bottomRight, child: CustomImageView(imagePath: ImageConstant.imgContrastGreen50)))]))), SizedBox(height: 39.v), Opacity(opacity: 0.4, child: Divider(color: appTheme.lightGreen50066.withOpacity(0.49))), SizedBox(height: 39.v), _buildFullNameTextField(context), SizedBox(height: 8.v), _buildEmailTextField(context), SizedBox(height: 8.v), _buildPasswordTextField(context), SizedBox(height: 8.v), _buildPhoneNumberTextField(context), SizedBox(height: 5.v)]))), bottomNavigationBar: _buildSaveButton(context)));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapClose(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_language".tr)); } 
/// Section Widget
Widget _buildFullNameTextField(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<MyAccountBloc, MyAccountState, TextEditingController?>(selector: (state) => state.fullNameTextFieldController, builder: (context, fullNameTextFieldController) {return CustomFloatingTextField(controller: fullNameTextFieldController, labelText: "lbl_full_name".tr, labelStyle: theme.textTheme.bodyLarge!, hintText: "lbl_full_name".tr, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});})); } 
/// Section Widget
Widget _buildEmailTextField(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<MyAccountBloc, MyAccountState, TextEditingController?>(selector: (state) => state.emailTextFieldController, builder: (context, emailTextFieldController) {return CustomFloatingTextField(controller: emailTextFieldController, labelText: "lbl_email_address".tr, labelStyle: theme.textTheme.bodyLarge!, hintText: "lbl_email_address".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});})); } 
/// Section Widget
Widget _buildPasswordTextField(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocBuilder<MyAccountBloc, MyAccountState>(builder: (context, state) {return CustomFloatingTextField(controller: state.passwordTextFieldController, labelText: "lbl_password".tr, labelStyle: theme.textTheme.bodyLarge!, hintText: "lbl_password".tr, textInputType: TextInputType.visiblePassword, obscureText: state.isShowPassword, suffix: InkWell(onTap: () {context.read<MyAccountBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.symmetric(horizontal: 24.h), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 76.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;});})); } 
/// Section Widget
Widget _buildPhoneNumberTextField(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<MyAccountBloc, MyAccountState, TextEditingController?>(selector: (state) => state.phoneNumberTextFieldController, builder: (context, phoneNumberTextFieldController) {return CustomFloatingTextField(controller: phoneNumberTextFieldController, labelText: "lbl_phone_number".tr, labelStyle: theme.textTheme.bodyLarge!, hintText: "lbl_phone_number".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.phone, validator: (value) {if (!isValidPhone(value)) {return "err_msg_please_enter_valid_phone_number".tr;} return null;});})); } 
/// Section Widget
Widget _buildSaveButton(BuildContext context) { return CustomElevatedButton(text: "lbl_save".tr, margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 60.v)); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
