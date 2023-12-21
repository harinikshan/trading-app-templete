import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/timeframes_item_model.dart';
import 'package:hari_s_application3/presentation/portfolio_stock_detail_vone_page/models/portfolio_stock_detail_vone_model.dart';
part 'portfolio_stock_detail_vone_event.dart';
part 'portfolio_stock_detail_vone_state.dart';

/// A bloc that manages the state of a PortfolioStockDetailVone according to the event that is dispatched to it.
class PortfolioStockDetailVoneBloc
    extends Bloc<PortfolioStockDetailVoneEvent, PortfolioStockDetailVoneState> {
  PortfolioStockDetailVoneBloc(PortfolioStockDetailVoneState initialState)
      : super(initialState) {
    on<PortfolioStockDetailVoneInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    PortfolioStockDetailVoneInitialEvent event,
    Emitter<PortfolioStockDetailVoneState> emit,
  ) async {
    emit(state.copyWith(
        portfolioStockDetailVoneModelObj:
            state.portfolioStockDetailVoneModelObj?.copyWith(
      timeframesItemList: fillTimeframesItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<PortfolioStockDetailVoneState> emit,
  ) {
    List<TimeframesItemModel> newList = List<TimeframesItemModel>.from(
        state.portfolioStockDetailVoneModelObj!.timeframesItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        portfolioStockDetailVoneModelObj: state.portfolioStockDetailVoneModelObj
            ?.copyWith(timeframesItemList: newList)));
  }

  List<TimeframesItemModel> fillTimeframesItemList() {
    return List.generate(5, (index) => TimeframesItemModel());
  }
}
