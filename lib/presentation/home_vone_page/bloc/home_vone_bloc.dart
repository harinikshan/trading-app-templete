import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stockitem_item_model.dart';
import 'package:hari_s_application3/presentation/home_vone_page/models/home_vone_model.dart';
part 'home_vone_event.dart';
part 'home_vone_state.dart';

/// A bloc that manages the state of a HomeVone according to the event that is dispatched to it.
class HomeVoneBloc extends Bloc<HomeVoneEvent, HomeVoneState> {
  HomeVoneBloc(HomeVoneState initialState) : super(initialState) {
    on<HomeVoneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeVoneInitialEvent event,
    Emitter<HomeVoneState> emit,
  ) async {
    emit(state.copyWith(
        homeVoneModelObj: state.homeVoneModelObj?.copyWith(
      stockitemItemList: fillStockitemItemList(),
    )));
  }

  List<StockitemItemModel> fillStockitemItemList() {
    return [
      StockitemItemModel(
          fb: ImageConstant.imgFacebook, text1: "FB", text2: "Facebook, Inc"),
      StockitemItemModel(
          fb: ImageConstant.imgCloseOnprimarycontainer,
          text1: "AAPL",
          text2: "Apple")
    ];
  }
}
