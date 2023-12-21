import '../faq_screen/widgets/questionabout_item_widget.dart';import 'bloc/faq_bloc.dart';import 'models/faq_model.dart';import 'models/questionabout_item_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_search_view.dart';class FaqScreen extends StatelessWidget {const FaqScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<FaqBloc>(create: (context) => FaqBloc(FaqState(faqModelObj: FaqModel()))..add(FaqInitialEvent()), child: FaqScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), Container(height: 140.adaptSize, width: 140.adaptSize, padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 33.v), decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder70), child: CustomImageView(imagePath: ImageConstant.imgGroupPink500, height: 73.v, width: 115.h, alignment: Alignment.center)), SizedBox(height: 36.v), Text("msg_how_can_we_help".tr, style: theme.textTheme.headlineSmall), SizedBox(height: 22.v), Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: BlocSelector<FaqBloc, FaqState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return CustomSearchView(controller: searchController, hintText: "msg_search_topics_or".tr);})), SizedBox(height: 24.v), _buildQuestionAbout(context), SizedBox(height: 28.v), _buildTopQuestions(context)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapClose(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_faq".tr)); } 
/// Section Widget
Widget _buildQuestionAbout(BuildContext context) { return Align(alignment: Alignment.centerRight, child: SizedBox(height: 116.v, child: BlocSelector<FaqBloc, FaqState, FaqModel?>(selector: (state) => state.faqModelObj, builder: (context, faqModelObj) {return ListView.separated(padding: EdgeInsets.only(left: 24.h), scrollDirection: Axis.horizontal, separatorBuilder: (context, index) {return SizedBox(width: 16.h);}, itemCount: faqModelObj?.questionaboutItemList.length ?? 0, itemBuilder: (context, index) {QuestionaboutItemModel model = faqModelObj?.questionaboutItemList[index] ?? QuestionaboutItemModel(); return QuestionaboutItemWidget(model);});}))); } 
/// Section Widget
Widget _buildTopQuestions(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 24.h), child: Column(children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_top_questions".tr, style: theme.textTheme.titleMedium), Padding(padding: EdgeInsets.only(bottom: 3.v), child: Text("lbl_view_all".tr, style: CustomTextStyles.titleSmallPink500))]), SizedBox(height: 16.v), Column(children: [Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text("msg_how_to_create_a".tr, style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgSettingsPinkA10024x24, height: 24.adaptSize, width: 24.adaptSize)]), SizedBox(height: 8.v), Container(width: 282.h, margin: EdgeInsets.only(right: 13.h), child: Text("msg_open_the_tradebase".tr, maxLines: 3, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall!.copyWith(height: 1.33)))])), SizedBox(height: 15.v), Container(padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 1.v), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.circleBorder20), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 19.v), child: Text("msg_how_to_add_a_payment".tr, style: theme.textTheme.titleSmall)), CustomImageView(imagePath: ImageConstant.imgClosePinkA100, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(top: 14.v))]))])])); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }