// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_v2_scroll_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioStockDetailV2ScrollTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioStockDetailV2ScrollTabContainerEvent
    extends Equatable {}

/// Event that is dispatched when the PortfolioStockDetailV2ScrollTabContainer widget is first created.
class PortfolioStockDetailV2ScrollTabContainerInitialEvent
    extends PortfolioStockDetailV2ScrollTabContainerEvent {
  @override
  List<Object?> get props => [];
}
