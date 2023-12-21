// ignore_for_file: must_be_immutable

part of 'no_order_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NoOrder widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NoOrderEvent extends Equatable {}

/// Event that is dispatched when the NoOrder widget is first created.
class NoOrderInitialEvent extends NoOrderEvent {
  @override
  List<Object?> get props => [];
}
