// ignore_for_file: must_be_immutable

part of 'history_calendar_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HistoryCalendarTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HistoryCalendarTabContainerEvent extends Equatable {}

/// Event that is dispatched when the HistoryCalendarTabContainer widget is first created.
class HistoryCalendarTabContainerInitialEvent
    extends HistoryCalendarTabContainerEvent {
  @override
  List<Object?> get props => [];
}
