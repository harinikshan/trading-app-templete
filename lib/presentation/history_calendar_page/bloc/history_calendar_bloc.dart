import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/item1_item_model.dart';
import 'package:hari_s_application3/presentation/history_calendar_page/models/history_calendar_model.dart';
part 'history_calendar_event.dart';
part 'history_calendar_state.dart';

/// A bloc that manages the state of a HistoryCalendar according to the event that is dispatched to it.
class HistoryCalendarBloc
    extends Bloc<HistoryCalendarEvent, HistoryCalendarState> {
  HistoryCalendarBloc(HistoryCalendarState initialState) : super(initialState) {
    on<HistoryCalendarInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryCalendarInitialEvent event,
    Emitter<HistoryCalendarState> emit,
  ) async {
    emit(state.copyWith(
        historyCalendarModelObj: state.historyCalendarModelObj?.copyWith(
      item1ItemList: fillItem1ItemList(),
    )));
  }

  List<Item1ItemModel> fillItem1ItemList() {
    return [
      Item1ItemModel(
          trashImage: ImageConstant.imgTrash,
          twtr: "TWTR",
          twitterInc: "Twitter Inc.",
          twitterImage: ImageConstant.imgChartBlue70032x80,
          priceText: "63.98",
          fastForwardImage: ImageConstant.imgForwardBlue700,
          percentText: "0.23%"),
      Item1ItemModel(
          trashImage: ImageConstant.imgGrid,
          twtr: "MSFT",
          twitterInc: "Microsoft",
          twitterImage: ImageConstant.imgChartGreen500,
          priceText: "302.1",
          fastForwardImage: ImageConstant.imgForwardGreen500,
          percentText: "0.23%")
    ];
  }
}
