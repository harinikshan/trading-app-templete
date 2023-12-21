import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/no_order_tab_container_page/models/no_order_tab_container_model.dart';
part 'no_order_tab_container_event.dart';
part 'no_order_tab_container_state.dart';

/// A bloc that manages the state of a NoOrderTabContainer according to the event that is dispatched to it.
class NoOrderTabContainerBloc
    extends Bloc<NoOrderTabContainerEvent, NoOrderTabContainerState> {
  NoOrderTabContainerBloc(NoOrderTabContainerState initialState)
      : super(initialState) {
    on<NoOrderTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NoOrderTabContainerInitialEvent event,
    Emitter<NoOrderTabContainerState> emit,
  ) async {}
}
