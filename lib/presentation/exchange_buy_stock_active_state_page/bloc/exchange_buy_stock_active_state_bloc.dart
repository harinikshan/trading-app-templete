import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/exchange_buy_stock_active_state_page/models/exchange_buy_stock_active_state_model.dart';
part 'exchange_buy_stock_active_state_event.dart';
part 'exchange_buy_stock_active_state_state.dart';

/// A bloc that manages the state of a ExchangeBuyStockActiveState according to the event that is dispatched to it.
class ExchangeBuyStockActiveStateBloc extends Bloc<
    ExchangeBuyStockActiveStateEvent, ExchangeBuyStockActiveStateState> {
  ExchangeBuyStockActiveStateBloc(ExchangeBuyStockActiveStateState initialState)
      : super(initialState) {
    on<ExchangeBuyStockActiveStateInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ExchangeBuyStockActiveStateInitialEvent event,
    Emitter<ExchangeBuyStockActiveStateState> emit,
  ) async {}
}
