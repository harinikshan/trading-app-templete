// ignore_for_file: must_be_immutable

part of 'exchange_buy_stock_active_state_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExchangeBuyStockActiveState widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExchangeBuyStockActiveStateEvent extends Equatable {}

/// Event that is dispatched when the ExchangeBuyStockActiveState widget is first created.
class ExchangeBuyStockActiveStateInitialEvent
    extends ExchangeBuyStockActiveStateEvent {
  @override
  List<Object?> get props => [];
}
