// ignore_for_file: must_be_immutable

part of 'history_calendar_tab_container_bloc.dart';

/// Represents the state of HistoryCalendarTabContainer in the application.
class HistoryCalendarTabContainerState extends Equatable {
  HistoryCalendarTabContainerState({this.historyCalendarTabContainerModelObj});

  HistoryCalendarTabContainerModel? historyCalendarTabContainerModelObj;

  @override
  List<Object?> get props => [
        historyCalendarTabContainerModelObj,
      ];
  HistoryCalendarTabContainerState copyWith(
      {HistoryCalendarTabContainerModel? historyCalendarTabContainerModelObj}) {
    return HistoryCalendarTabContainerState(
      historyCalendarTabContainerModelObj:
          historyCalendarTabContainerModelObj ??
              this.historyCalendarTabContainerModelObj,
    );
  }
}
