import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/portfolio_stock_detail_v2_scroll_page/models/portfolio_stock_detail_v2_scroll_model.dart';
part 'portfolio_stock_detail_v2_scroll_event.dart';
part 'portfolio_stock_detail_v2_scroll_state.dart';

/// A bloc that manages the state of a PortfolioStockDetailV2Scroll according to the event that is dispatched to it.
class PortfolioStockDetailV2ScrollBloc extends Bloc<
    PortfolioStockDetailV2ScrollEvent, PortfolioStockDetailV2ScrollState> {
  PortfolioStockDetailV2ScrollBloc(
      PortfolioStockDetailV2ScrollState initialState)
      : super(initialState) {
    on<PortfolioStockDetailV2ScrollInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PortfolioStockDetailV2ScrollInitialEvent event,
    Emitter<PortfolioStockDetailV2ScrollState> emit,
  ) async {}
}
