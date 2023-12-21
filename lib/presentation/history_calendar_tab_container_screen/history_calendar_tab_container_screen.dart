import 'bloc/history_calendar_tab_container_bloc.dart';
import 'models/history_calendar_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/history_calendar_page/history_calendar_page.dart';
import 'package:hari_s_application3/presentation/home_vone_page/home_vone_page.dart';
import 'package:hari_s_application3/presentation/no_order_tab_container_page/no_order_tab_container_page.dart';
import 'package:hari_s_application3/presentation/portfolio_vtwo_page/portfolio_vtwo_page.dart';
import 'package:hari_s_application3/presentation/profile_page/profile_page.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:hari_s_application3/widgets/custom_bottom_bar.dart';

class HistoryCalendarTabContainerScreen extends StatefulWidget {
  const HistoryCalendarTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryCalendarTabContainerScreenState createState() =>
      HistoryCalendarTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryCalendarTabContainerBloc>(
      create: (context) =>
          HistoryCalendarTabContainerBloc(HistoryCalendarTabContainerState(
        historyCalendarTabContainerModelObj: HistoryCalendarTabContainerModel(),
      ))
            ..add(HistoryCalendarTabContainerInitialEvent()),
      child: HistoryCalendarTabContainerScreen(),
    );
  }
}

class HistoryCalendarTabContainerScreenState
    extends State<HistoryCalendarTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 6, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HistoryCalendarTabContainerBloc,
        HistoryCalendarTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 18.v),
                  _buildDate(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: SizedBox(
                        height: 527.v,
                        child: TabBarView(
                          controller: tabviewController,
                          children: [
                            HistoryCalendarPage(),
                            HistoryCalendarPage(),
                            HistoryCalendarPage(),
                            HistoryCalendarPage(),
                            HistoryCalendarPage(),
                            HistoryCalendarPage(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillGray50.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomAppBar(
            height: 25.v,
            title: AppbarSubtitle(
              text: "lbl_order_history".tr,
              margin: EdgeInsets.only(left: 24.h),
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgThumbsUp,
                margin: EdgeInsets.only(
                  left: 24.h,
                  right: 24.h,
                  bottom: 1.v,
                ),
              ),
            ],
          ),
          SizedBox(height: 46.v),
          Container(
            height: 46.v,
            width: double.maxFinite,
            child: TabBar(
              controller: tabviewController,
              isScrollable: true,
              labelColor: appTheme.pink500,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Eudoxus Sans',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: appTheme.gray600,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Eudoxus Sans',
                fontWeight: FontWeight.w700,
              ),
              indicatorColor: appTheme.pink50,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_may".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_june".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_july".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_august".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_september".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_october".tr,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconshome:
        return AppRoutes.homeVonePage;
      case BottomBarEnum.Contrast:
        return AppRoutes.portfolioVtwoPage;
      case BottomBarEnum.Userindigo50:
        return AppRoutes.noOrderTabContainerPage;
      case BottomBarEnum.Lock:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeVonePage:
        return HomeVonePage();
      case AppRoutes.portfolioVtwoPage:
        return PortfolioVtwoPage();
      case AppRoutes.noOrderTabContainerPage:
        return NoOrderTabContainerPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
