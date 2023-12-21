import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/exchange_buy_stock_active_state1_page/models/exchange_buy_stock_active_state1_model.dart';
part 'exchange_buy_stock_active_state1_event.dart';
part 'exchange_buy_stock_active_state1_state.dart';

/// A bloc that manages the state of a ExchangeBuyStockActiveState1 according to the event that is dispatched to it.
class ExchangeBuyStockActiveState1Bloc extends Bloc<
    ExchangeBuyStockActiveState1Event, ExchangeBuyStockActiveState1State> {
  ExchangeBuyStockActiveState1Bloc(
      ExchangeBuyStockActiveState1State initialState)
      : super(initialState) {
    on<ExchangeBuyStockActiveState1InitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExchangeBuyStockActiveState1InitialEvent event,
    Emitter<ExchangeBuyStockActiveState1State> emit,
  ) async {}
}
