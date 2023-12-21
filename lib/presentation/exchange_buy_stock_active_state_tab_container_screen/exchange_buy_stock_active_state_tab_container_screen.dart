import 'bloc/exchange_buy_stock_active_state_tab_container_bloc.dart';import 'models/exchange_buy_stock_active_state_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/presentation/exchange_buy_stock_active_state1_page/exchange_buy_stock_active_state1_page.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_leading_iconbutton.dart';import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';class ExchangeBuyStockActiveStateTabContainerScreen extends StatefulWidget {const ExchangeBuyStockActiveStateTabContainerScreen({Key? key}) : super(key: key);

@override ExchangeBuyStockActiveStateTabContainerScreenState createState() =>  ExchangeBuyStockActiveStateTabContainerScreenState();

static Widget builder(BuildContext context) { return BlocProvider<ExchangeBuyStockActiveStateTabContainerBloc>(create: (context) => ExchangeBuyStockActiveStateTabContainerBloc(ExchangeBuyStockActiveStateTabContainerState(exchangeBuyStockActiveStateTabContainerModelObj: ExchangeBuyStockActiveStateTabContainerModel()))..add(ExchangeBuyStockActiveStateTabContainerInitialEvent()), child: ExchangeBuyStockActiveStateTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class ExchangeBuyStockActiveStateTabContainerScreenState extends State<ExchangeBuyStockActiveStateTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 2, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<ExchangeBuyStockActiveStateTabContainerBloc, ExchangeBuyStockActiveStateTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 32.v), _buildTabview(context), SizedBox(height: 624.v, child: TabBarView(controller: tabviewController, children: [ExchangeBuyStockActiveState1Page(), ExchangeBuyStockActiveState1Page()]))]))));}); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 64.h, leading: AppbarLeadingIconbutton(imagePath: ImageConstant.imgClose, margin: EdgeInsets.only(left: 24.h, top: 8.v, bottom: 8.v), onTap: () {onTapClose(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_exchange".tr)); } 
/// Section Widget
Widget _buildTabview(BuildContext context) { return Container(height: 48.v, width: 327.h, decoration: BoxDecoration(color: appTheme.pink50, borderRadius: BorderRadius.circular(16.h)), child: TabBar(controller: tabviewController, labelPadding: EdgeInsets.zero, labelColor: appTheme.pink500, labelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Eudoxus Sans', fontWeight: FontWeight.w700), unselectedLabelColor: theme.colorScheme.onPrimaryContainer, unselectedLabelStyle: TextStyle(fontSize: 14.fSize, fontFamily: 'Eudoxus Sans', fontWeight: FontWeight.w700), indicatorPadding: EdgeInsets.all(8.0.h), indicator: BoxDecoration(color: theme.colorScheme.onErrorContainer.withOpacity(1), borderRadius: BorderRadius.circular(8.h)), tabs: [Tab(child: Text("lbl_buy".tr)), Tab(child: Text("lbl_sell".tr))])); } 

/// Navigates to the previous screen.
onTapClose(BuildContext context) { NavigatorService.goBack(); } 
 }
