// ignore_for_file: must_be_immutable

part of 'exchange_buy_stock_active_state1_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExchangeBuyStockActiveState1 widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExchangeBuyStockActiveState1Event extends Equatable {}

/// Event that is dispatched when the ExchangeBuyStockActiveState1 widget is first created.
class ExchangeBuyStockActiveState1InitialEvent
    extends ExchangeBuyStockActiveState1Event {
  @override
  List<Object?> get props => [];
}
