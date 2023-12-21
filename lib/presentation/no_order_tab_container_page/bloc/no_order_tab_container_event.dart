// ignore_for_file: must_be_immutable

part of 'no_order_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoOrderTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoOrderTabContainerEvent extends Equatable {}

/// Event that is dispatched when the NoOrderTabContainer widget is first created.
class NoOrderTabContainerInitialEvent extends NoOrderTabContainerEvent {
  @override
  List<Object?> get props => [];
}
