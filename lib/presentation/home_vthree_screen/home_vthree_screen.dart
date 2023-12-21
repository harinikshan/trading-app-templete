import 'bloc/home_vthree_bloc.dart';
import 'models/home_vthree_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/home_vone_page/home_vone_page.dart';
import 'package:hari_s_application3/presentation/no_order_tab_container_page/no_order_tab_container_page.dart';
import 'package:hari_s_application3/presentation/portfolio_vtwo_page/portfolio_vtwo_page.dart';
import 'package:hari_s_application3/presentation/profile_page/profile_page.dart';
import 'package:hari_s_application3/widgets/custom_bottom_bar.dart';

class HomeVthreeScreen extends StatelessWidget {
  HomeVthreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeVthreeBloc>(
      create: (context) => HomeVthreeBloc(HomeVthreeState(
        homeVthreeModelObj: HomeVthreeModel(),
      ))
        ..add(HomeVthreeInitialEvent()),
      child: HomeVthreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<HomeVthreeBloc, HomeVthreeState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 768.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgBody,
                    height: 768.v,
                    width: 375.h,
                    alignment: Alignment.center,
                  ),
                  SizedBox(
                    height: 768.v,
                    width: double.maxFinite,
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
