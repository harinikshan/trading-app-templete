import '../history_calendar_page/widgets/item1_item_widget.dart';
import 'bloc/history_calendar_bloc.dart';
import 'models/history_calendar_model.dart';
import 'models/item1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hari_s_application3/core/app_export.dart';

// ignore_for_file: must_be_immutable
class HistoryCalendarPage extends StatefulWidget {
  const HistoryCalendarPage({Key? key})
      : super(
          key: key,
        );

  @override
  HistoryCalendarPageState createState() => HistoryCalendarPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<HistoryCalendarBloc>(
      create: (context) => HistoryCalendarBloc(HistoryCalendarState(
        historyCalendarModelObj: HistoryCalendarModel(),
      ))
        ..add(HistoryCalendarInitialEvent()),
      child: HistoryCalendarPage(),
    );
  }
}

class HistoryCalendarPageState extends State<HistoryCalendarPage>
    with AutomaticKeepAliveClientMixin<HistoryCalendarPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 27.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: Column(
                    children: [
                      _buildCalendar(context),
                      SizedBox(height: 26.v),
                      Container(
                        height: 6.v,
                        width: 48.h,
                        decoration: BoxDecoration(
                          color: appTheme.pink500,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                      ),
                      SizedBox(height: 42.v),
                      _buildTitle(context),
                      SizedBox(height: 34.v),
                      _buildItem(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 11.h,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              right: 4.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_12".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_23".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_32".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_4".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_5".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_6".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_7".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 7.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_8".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 18,
                ),
                Text(
                  "lbl_9".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 16,
                ),
                Text(
                  "lbl_102".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 16,
                ),
                Text(
                  "lbl_112".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 16,
                ),
                Text(
                  "lbl_122".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 16,
                ),
                Text(
                  "lbl_13".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Spacer(
                  flex: 15,
                ),
                Text(
                  "lbl_14".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_15".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_162".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_17".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Container(
                  width: 39.adaptSize,
                  margin: EdgeInsets.only(left: 21.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 9.v,
                  ),
                  decoration: AppDecoration.fillPink50.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder20,
                  ),
                  child: Text(
                    "lbl_18".tr,
                    style: CustomTextStyles.titleSmallPink500,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_19".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 24,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_202".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
                Spacer(
                  flex: 24,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 11.v,
                    bottom: 9.v,
                  ),
                  child: Text(
                    "lbl_21".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_222".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_232".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_24".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_25".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_26".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_27".tr,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  "lbl_28".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ],
            ),
          ),
          SizedBox(height: 24.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 3.h,
                right: 193.h,
              ),
              child: Row(
                children: [
                  Text(
                    "lbl_29".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Spacer(
                    flex: 49,
                  ),
                  Text(
                    "lbl_30".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                  Spacer(
                    flex: 50,
                  ),
                  Text(
                    "lbl_31".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 29.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "lbl_sat".tr,
                style: CustomTextStyles.titleSmallGray600,
              ),
              Padding(
                padding: EdgeInsets.only(left: 23.h),
                child: Text(
                  "lbl_sun".tr,
                  style: CustomTextStyles.titleSmallGray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_mon".tr,
                  style: CustomTextStyles.titleSmallGray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Text(
                  "lbl_tue".tr,
                  style: CustomTextStyles.titleSmallPink500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.h),
                child: Text(
                  "lbl_wed".tr,
                  style: CustomTextStyles.titleSmallGray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 21.h),
                child: Text(
                  "lbl_thr".tr,
                  style: CustomTextStyles.titleSmallGray600,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 29.h),
                child: Text(
                  "lbl_fri".tr,
                  style: CustomTextStyles.titleSmallGray600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_all_order".tr,
          style: CustomTextStyles.titleMediumGray900_1,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.v),
          child: Text(
            "lbl_view_all".tr,
            style: CustomTextStyles.titleSmallPink500,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildItem(BuildContext context) {
    return BlocSelector<HistoryCalendarBloc, HistoryCalendarState,
        HistoryCalendarModel?>(
      selector: (state) => state.historyCalendarModelObj,
      builder: (context, historyCalendarModelObj) {
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
          itemCount: historyCalendarModelObj?.item1ItemList.length ?? 0,
          itemBuilder: (context, index) {
            Item1ItemModel model =
                historyCalendarModelObj?.item1ItemList[index] ??
                    Item1ItemModel();
            return Item1ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
