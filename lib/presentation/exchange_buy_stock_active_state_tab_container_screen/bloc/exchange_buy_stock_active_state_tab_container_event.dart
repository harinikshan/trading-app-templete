// ignore_for_file: must_be_immutable

part of 'exchange_buy_stock_active_state_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ExchangeBuyStockActiveStateTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ExchangeBuyStockActiveStateTabContainerEvent extends Equatable {}

/// Event that is dispatched when the ExchangeBuyStockActiveStateTabContainer widget is first created.
class ExchangeBuyStockActiveStateTabContainerInitialEvent
    extends ExchangeBuyStockActiveStateTabContainerEvent {
  @override
  List<Object?> get props => [];
}
