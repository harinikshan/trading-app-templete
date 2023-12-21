import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/history_calendar_tab_container_screen/models/history_calendar_tab_container_model.dart';
part 'history_calendar_tab_container_event.dart';
part 'history_calendar_tab_container_state.dart';

/// A bloc that manages the state of a HistoryCalendarTabContainer according to the event that is dispatched to it.
class HistoryCalendarTabContainerBloc extends Bloc<
    HistoryCalendarTabContainerEvent, HistoryCalendarTabContainerState> {
  HistoryCalendarTabContainerBloc(HistoryCalendarTabContainerState initialState)
      : super(initialState) {
    on<HistoryCalendarTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HistoryCalendarTabContainerInitialEvent event,
    Emitter<HistoryCalendarTabContainerState> emit,
  ) async {}
}
