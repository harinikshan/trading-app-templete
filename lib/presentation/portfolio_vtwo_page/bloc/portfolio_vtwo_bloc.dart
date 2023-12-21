import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/stockitem1_item_model.dart';
import 'package:hari_s_application3/presentation/portfolio_vtwo_page/models/portfolio_vtwo_model.dart';
part 'portfolio_vtwo_event.dart';
part 'portfolio_vtwo_state.dart';

/// A bloc that manages the state of a PortfolioVtwo according to the event that is dispatched to it.
class PortfolioVtwoBloc extends Bloc<PortfolioVtwoEvent, PortfolioVtwoState> {
  PortfolioVtwoBloc(PortfolioVtwoState initialState) : super(initialState) {
    on<PortfolioVtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PortfolioVtwoInitialEvent event,
    Emitter<PortfolioVtwoState> emit,
  ) async {
    emit(state.copyWith(
        portfolioVtwoModelObj: state.portfolioVtwoModelObj?.copyWith(
      stockitem1ItemList: fillStockitem1ItemList(),
    )));
  }

  List<Stockitem1ItemModel> fillStockitem1ItemList() {
    return [
      Stockitem1ItemModel(
          imageClass: ImageConstant.imgTrash,
          twtr: "TWTR",
          twitterInc: "Twitter Inc.",
          name: ImageConstant.imgChartBlue70032x80,
          text: "63.98",
          imageClass1: ImageConstant.imgForwardBlue700,
          text1: "0.23%"),
      Stockitem1ItemModel(
          imageClass: ImageConstant.imgGrid,
          twtr: "MSFT",
          twitterInc: "Microsoft",
          name: ImageConstant.imgChartGreen500,
          text: "302.1",
          imageClass1: ImageConstant.imgForwardGreen500,
          text1: "0.23%"),
      Stockitem1ItemModel(
          imageClass: ImageConstant.imgCheckmarkPrimarycontainer,
          twtr: "NIKE",
          twitterInc: "Nike, Inc.",
          name: ImageConstant.imgChartAmber500,
          text: "169.8",
          imageClass1: ImageConstant.imgForwardAmber500,
          text1: "0,082%"),
      Stockitem1ItemModel(
          imageClass: ImageConstant.imgSettingsGreenA700,
          twtr: "SPOT",
          twitterInc: "Spotify",
          name: ImageConstant.imgChartGreenA700,
          text: "226,9",
          imageClass1: ImageConstant.imgArrowUp,
          text1: "0,90%")
    ];
  }
}
