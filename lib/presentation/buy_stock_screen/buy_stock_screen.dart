import '../buy_stock_screen/widgets/suggestions_item_widget.dart';import 'bloc/buy_stock_bloc.dart';import 'models/buy_stock_model.dart';import 'models/suggestions_item_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';import 'package:hari_s_application3/widgets/custom_elevated_button.dart';class BuyStockScreen extends StatelessWidget {const BuyStockScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<BuyStockBloc>(create: (context) => BuyStockBloc(BuyStockState(buyStockModelObj: BuyStockModel()))..add(BuyStockInitialEvent()), child: BuyStockScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(backgroundColor: appTheme.gray50, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.only(left: 24.h, top: 82.v, right: 24.h), child: Column(children: [RichText(text: TextSpan(children: [TextSpan(text: "lbl_382".tr, style: CustomTextStyles.displaySmallOnPrimaryContainer), TextSpan(text: "lbl_20".tr, style: CustomTextStyles.headlineSmallBluegray400)]), textAlign: TextAlign.left), SizedBox(height: 89.v), _buildSuggestions(context), SizedBox(height: 24.v), CustomElevatedButton(text: "lbl_buy_aapl".tr), SizedBox(height: 5.v)])))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapClose(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_buy_stock".tr)); } 
/// Section Widget
Widget _buildSuggestions(BuildContext context) { return BlocSelector<BuyStockBloc, BuyStockState, BuyStockModel?>(selector: (state) => state.buyStockModelObj, builder: (context, buyStockModelObj) {return Wrap(runSpacing: 13.v, spacing: 13.h, children: List<Widget>.generate(buyStockModelObj?.suggestionsItemList.length ?? 0, (index) {SuggestionsItemModel model = buyStockModelObj?.suggestionsItemList[index] ?? SuggestionsItemModel(); return SuggestionsItemWidget(model, onSelectedChipView: (value) {context.read<BuyStockBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));}); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
