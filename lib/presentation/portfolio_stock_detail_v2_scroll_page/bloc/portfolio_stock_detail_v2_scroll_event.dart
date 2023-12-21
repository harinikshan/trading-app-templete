// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_v2_scroll_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioStockDetailV2Scroll widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioStockDetailV2ScrollEvent extends Equatable {}

/// Event that is dispatched when the PortfolioStockDetailV2Scroll widget is first created.
class PortfolioStockDetailV2ScrollInitialEvent
    extends PortfolioStockDetailV2ScrollEvent {
  @override
  List<Object?> get props => [];
}
