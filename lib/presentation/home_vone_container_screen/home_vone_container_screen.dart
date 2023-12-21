import 'bloc/home_vone_container_bloc.dart';import 'models/home_vone_container_model.dart';import 'package:flutter/material.dart';import 'package:hari_s_application3/core/app_export.dart';import 'package:hari_s_application3/presentation/home_vone_page/home_vone_page.dart';import 'package:hari_s_application3/presentation/no_order_tab_container_page/no_order_tab_container_page.dart';import 'package:hari_s_application3/presentation/portfolio_vtwo_page/portfolio_vtwo_page.dart';import 'package:hari_s_application3/presentation/profile_page/profile_page.dart';import 'package:hari_s_application3/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class HomeVoneContainerScreen extends StatelessWidget {HomeVoneContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeVoneContainerBloc>(create: (context) => HomeVoneContainerBloc(HomeVoneContainerState(homeVoneContainerModelObj: HomeVoneContainerModel()))..add(HomeVoneContainerInitialEvent()), child: HomeVoneContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomeVoneContainerBloc, HomeVoneContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(body: Navigator(key: navigatorKey, initialRoute: AppRoutes.homeVonePage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0))), bottomNavigationBar: _buildBottomBar(context)));}); } 
/// Section Widget
Widget _buildBottomBar(BuildContext context) { return CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Iconshome: return AppRoutes.homeVonePage; case BottomBarEnum.Contrast: return AppRoutes.portfolioVtwoPage; case BottomBarEnum.Userindigo50: return AppRoutes.noOrderTabContainerPage; case BottomBarEnum.Lock: return AppRoutes.profilePage; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.homeVonePage: return HomeVonePage(); case AppRoutes.portfolioVtwoPage: return PortfolioVtwoPage(); case AppRoutes.noOrderTabContainerPage: return NoOrderTabContainerPage(); case AppRoutes.profilePage: return ProfilePage(); default: return DefaultWidget();} } 
 }
