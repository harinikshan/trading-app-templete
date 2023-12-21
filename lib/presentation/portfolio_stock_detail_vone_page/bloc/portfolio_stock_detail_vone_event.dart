// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioStockDetailVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioStockDetailVoneEvent extends Equatable {}

/// Event that is dispatched when the PortfolioStockDetailVone widget is first created.
class PortfolioStockDetailVoneInitialEvent
    extends PortfolioStockDetailVoneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends PortfolioStockDetailVoneEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
