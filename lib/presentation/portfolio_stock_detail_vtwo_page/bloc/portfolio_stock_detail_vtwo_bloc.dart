import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/portfolio_stock_detail_vtwo_page/models/portfolio_stock_detail_vtwo_model.dart';
part 'portfolio_stock_detail_vtwo_event.dart';
part 'portfolio_stock_detail_vtwo_state.dart';

/// A bloc that manages the state of a PortfolioStockDetailVtwo according to the event that is dispatched to it.
class PortfolioStockDetailVtwoBloc
    extends Bloc<PortfolioStockDetailVtwoEvent, PortfolioStockDetailVtwoState> {
  PortfolioStockDetailVtwoBloc(PortfolioStockDetailVtwoState initialState)
      : super(initialState) {
    on<PortfolioStockDetailVtwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PortfolioStockDetailVtwoInitialEvent event,
    Emitter<PortfolioStockDetailVtwoState> emit,
  ) async {}
}
