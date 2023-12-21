// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_vtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioStockDetailVtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioStockDetailVtwoEvent extends Equatable {}

/// Event that is dispatched when the PortfolioStockDetailVtwo widget is first created.
class PortfolioStockDetailVtwoInitialEvent
    extends PortfolioStockDetailVtwoEvent {
  @override
  List<Object?> get props => [];
}
