import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/no_order_page/models/no_order_model.dart';
part 'no_order_event.dart';
part 'no_order_state.dart';

/// A bloc that manages the state of a NoOrder according to the event that is dispatched to it.
class NoOrderBloc extends Bloc<NoOrderEvent, NoOrderState> {
  NoOrderBloc(NoOrderState initialState) : super(initialState) {
    on<NoOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoOrderInitialEvent event,
    Emitter<NoOrderState> emit,
  ) async {}
}
