import 'bloc/login_empty_state_bloc.dart';import 'models/login_empty_state_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/core/utils/validation_functions.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_elevated_button.dart';import 'package:hari_s_application3/widgets/custom_text_form_field.dart';
// ignore_for_file: must_be_immutable
class LoginEmptyStateScreen extends StatelessWidget {LoginEmptyStateScreen({Key? key}) : super(key: key);

GlobalKey<FormState> _formKey = GlobalKey<FormState>();

static Widget builder(BuildContext context) { return BlocProvider<LoginEmptyStateBloc>(create: (context) => LoginEmptyStateBloc(LoginEmptyStateState(loginEmptyStateModelObj: LoginEmptyStateModel()))..add(LoginEmptyStateInitialEvent()), child: LoginEmptyStateScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgGroup10, height: 27.v, width: 31.h, margin: EdgeInsets.only(bottom: 3.v)), Padding(padding: EdgeInsets.only(left: 2.h, top: 7.v), child: Text("lbl_arrow_trade".tr, style: CustomTextStyles.titleMediumKodchasanPrimary))])), SizedBox(height: 42.v), Align(alignment: Alignment.centerLeft, child: Text("msg_let_s_sign_you_in".tr, style: theme.textTheme.headlineSmall)), SizedBox(height: 19.v), Align(alignment: Alignment.centerLeft, child: Text("msg_welcome_back_you_ve".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 44.v), BlocSelector<LoginEmptyStateBloc, LoginEmptyStateState, TextEditingController?>(selector: (state) => state.emailController, builder: (context, emailController) {return CustomTextFormField(controller: emailController, hintText: "lbl_email_address".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}), SizedBox(height: 20.v), BlocBuilder<LoginEmptyStateBloc, LoginEmptyStateState>(builder: (context, state) {return CustomTextFormField(controller: state.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: InkWell(onTap: () {context.read<LoginEmptyStateBloc>().add(ChangePasswordVisibilityEvent(value: !state.isShowPassword));}, child: Container(margin: EdgeInsets.fromLTRB(30.h, 20.v, 24.h, 20.v), child: CustomImageView(imagePath: ImageConstant.imgEye, height: 24.adaptSize, width: 24.adaptSize))), suffixConstraints: BoxConstraints(maxHeight: 64.v), validator: (value) {if (value == null || (!isValidPassword(value, isRequired: true))) {return "err_msg_please_enter_valid_password".tr;} return null;}, obscureText: state.isShowPassword, contentPadding: EdgeInsets.only(left: 24.h, top: 21.v, bottom: 21.v));}), Spacer(), CustomElevatedButton(text: "lbl_login".tr), SizedBox(height: 29.v), RichText(text: TextSpan(children: [TextSpan(text: "msg_dont_s_have_an_account2".tr, style: CustomTextStyles.bodyMediumOnPrimaryContainer), TextSpan(text: "lbl_sign_up".tr, style: CustomTextStyles.bodyMediumOnPrimary)]), textAlign: TextAlign.left), SizedBox(height: 13.v)]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: double.maxFinite, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.fromLTRB(24.h, 8.v, 311.h, 8.v), onTap: () {onTapClose(context);})); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
