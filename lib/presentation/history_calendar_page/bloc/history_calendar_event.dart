// ignore_for_file: must_be_immutable

part of 'history_calendar_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryCalendar widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryCalendarEvent extends Equatable {}

/// Event that is dispatched when the HistoryCalendar widget is first created.
class HistoryCalendarInitialEvent extends HistoryCalendarEvent {
  @override
  List<Object?> get props => [];
}
