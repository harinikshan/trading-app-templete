import '../history_page/widgets/item_item_widget.dart';
import 'bloc/history_bloc.dart';
import 'models/history_model.dart';
import 'models/item_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryPageState createState() => HistoryPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryBloc>(
      create: (context) => HistoryBloc(HistoryState(
        historyModelObj: HistoryModel(),
      ))
        ..add(HistoryInitialEvent()),
      child: HistoryPage(),
    );
  }
}

class HistoryPageState extends State<HistoryPage>
    with AutomaticKeepAliveClientMixin<HistoryPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnErrorContainer,
          child: Column(
            children: [
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_recent_order".tr,
                      style: CustomTextStyles.titleMediumGray900_1,
                    ),
                    SizedBox(height: 27.v),
                    _buildRecentOrderDuration(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRecentOrderDuration(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_today_27_aug_2021".tr,
          style: CustomTextStyles.labelLargeGray600,
        ),
        SizedBox(height: 22.v),
        BlocSelector<HistoryBloc, HistoryState, HistoryModel?>(
          selector: (state) => state.historyModelObj,
          builder: (context, historyModelObj) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 34.v,
                );
              },
              itemCount: historyModelObj?.itemItemList.length ?? 0,
              itemBuilder: (context, index) {
                ItemItemModel model =
                    historyModelObj?.itemItemList[index] ?? ItemItemModel();
                return ItemItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
