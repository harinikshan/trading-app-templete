// ignore_for_file: must_be_immutable

part of 'buy_stock_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///BuyStock widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class BuyStockEvent extends Equatable {}

/// Event that is dispatched when the BuyStock widget is first created.
class BuyStockInitialEvent extends BuyStockEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends BuyStockEvent {
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
