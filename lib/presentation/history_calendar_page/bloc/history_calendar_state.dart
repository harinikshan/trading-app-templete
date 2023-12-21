// ignore_for_file: must_be_immutable

part of 'history_calendar_bloc.dart';

/// Represents the state of HistoryCalendar in the application.
class HistoryCalendarState extends Equatable {
  HistoryCalendarState({this.historyCalendarModelObj});

  HistoryCalendarModel? historyCalendarModelObj;

  @override
  List<Object?> get props => [
        historyCalendarModelObj,
      ];
  HistoryCalendarState copyWith(
      {HistoryCalendarModel? historyCalendarModelObj}) {
    return HistoryCalendarState(
      historyCalendarModelObj:
          historyCalendarModelObj ?? this.historyCalendarModelObj,
    );
  }
}
