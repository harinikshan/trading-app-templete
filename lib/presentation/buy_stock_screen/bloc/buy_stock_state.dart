// ignore_for_file: must_be_immutable

part of 'buy_stock_bloc.dart';

/// Represents the state of BuyStock in the application.
class BuyStockState extends Equatable {
  BuyStockState({this.buyStockModelObj});

  BuyStockModel? buyStockModelObj;

  @override
  List<Object?> get props => [
        buyStockModelObj,
      ];
  BuyStockState copyWith({BuyStockModel? buyStockModelObj}) {
    return BuyStockState(
      buyStockModelObj: buyStockModelObj ?? this.buyStockModelObj,
    );
  }
}
