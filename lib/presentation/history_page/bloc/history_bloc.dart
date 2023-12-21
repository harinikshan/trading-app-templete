import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/item_item_model.dart';
import 'package:hari_s_application3/presentation/history_page/models/history_model.dart';
part 'history_event.dart';
part 'history_state.dart';

/// A bloc that manages the state of a History according to the event that is dispatched to it.
class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc(HistoryState initialState) : super(initialState) {
    on<HistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryInitialEvent event,
    Emitter<HistoryState> emit,
  ) async {
    emit(state.copyWith(
        historyModelObj: state.historyModelObj?.copyWith(
      itemItemList: fillItemItemList(),
    )));
  }

  List<ItemItemModel> fillItemItemList() {
    return [
      ItemItemModel(
          trashImage: ImageConstant.imgTrash,
          twtr: "TWTR",
          twitterInc: "Twitter Inc.",
          twitterImage: ImageConstant.imgChartBlue70032x80,
          priceText: "63.98",
          fastForwardImage: ImageConstant.imgForwardBlue700,
          percentText: "0.23%"),
      ItemItemModel(
          trashImage: ImageConstant.imgGrid,
          twtr: "MSFT",
          twitterInc: "Microsoft",
          twitterImage: ImageConstant.imgChartGreen500,
          priceText: "302.1",
          fastForwardImage: ImageConstant.imgForwardGreen500,
          percentText: "0.23%"),
      ItemItemModel(
          trashImage: ImageConstant.imgCheckmarkPrimarycontainer,
          twtr: "NIKE",
          twitterInc: "Nike, Inc.",
          twitterImage: ImageConstant.imgChartAmber500,
          priceText: "169.8",
          fastForwardImage: ImageConstant.imgForwardAmber500,
          percentText: "0,082%"),
      ItemItemModel(
          trashImage: ImageConstant.imgSettingsGreenA700,
          twtr: "SPOT",
          twitterInc: "Spotify",
          twitterImage: ImageConstant.imgChartGreenA700,
          priceText: "226,9",
          fastForwardImage: ImageConstant.imgArrowUp,
          percentText: "0,90%")
    ];
  }
}
