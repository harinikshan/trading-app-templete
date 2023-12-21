// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_vone_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioStockDetailVoneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioStockDetailVoneTabContainerEvent extends Equatable {}

/// Event that is dispatched when the PortfolioStockDetailVoneTabContainer widget is first created.
class PortfolioStockDetailVoneTabContainerInitialEvent
    extends PortfolioStockDetailVoneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
