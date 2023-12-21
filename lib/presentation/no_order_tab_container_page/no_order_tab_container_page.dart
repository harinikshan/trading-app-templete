import 'bloc/no_order_tab_container_bloc.dart';
import 'models/no_order_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';
import 'package:hari_s_application3/presentation/history_page/history_page.dart';
import 'package:hari_s_application3/presentation/no_order_page/no_order_page.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:hari_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:hari_s_application3/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class NoOrderTabContainerPage extends StatefulWidget {
  const NoOrderTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  NoOrderTabContainerPageState createState() => NoOrderTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NoOrderTabContainerBloc>(
      create: (context) => NoOrderTabContainerBloc(NoOrderTabContainerState(
        noOrderTabContainerModelObj: NoOrderTabContainerModel(),
      ))
        ..add(NoOrderTabContainerInitialEvent()),
      child: NoOrderTabContainerPage(),
    );
  }
}

class NoOrderTabContainerPageState extends State<NoOrderTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<NoOrderTabContainerBloc, NoOrderTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 18.v),
                  _buildTabview(context),
                  SizedBox(
                    height: 539.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        NoOrderPage(),
                        HistoryPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: AppbarTitle(
        text: "lbl_portfolio".tr,
        margin: EdgeInsets.only(left: 24.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLightBulb,
          margin: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 16.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 48.v,
      width: 327.h,
      decoration: BoxDecoration(
        color: appTheme.pink50,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.pink500,
        labelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Eudoxus Sans',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
        unselectedLabelStyle: TextStyle(
          fontSize: 14.fSize,
          fontFamily: 'Eudoxus Sans',
          fontWeight: FontWeight.w700,
        ),
        indicatorPadding: EdgeInsets.all(
          8.0.h,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onErrorContainer.withOpacity(1),
          borderRadius: BorderRadius.circular(
            8.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_order".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_history".tr,
            ),
          ),
        ],
      ),
    );
  }
}
