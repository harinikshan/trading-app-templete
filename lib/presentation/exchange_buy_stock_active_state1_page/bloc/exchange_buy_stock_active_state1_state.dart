// ignore_for_file: must_be_immutable

part of 'exchange_buy_stock_active_state1_bloc.dart';

/// Represents the state of ExchangeBuyStockActiveState1 in the application.
class ExchangeBuyStockActiveState1State extends Equatable {
  ExchangeBuyStockActiveState1State(
      {this.exchangeBuyStockActiveState1ModelObj});

  ExchangeBuyStockActiveState1Model? exchangeBuyStockActiveState1ModelObj;

  @override
  List<Object?> get props => [
        exchangeBuyStockActiveState1ModelObj,
      ];
  ExchangeBuyStockActiveState1State copyWith(
      {ExchangeBuyStockActiveState1Model?
          exchangeBuyStockActiveState1ModelObj}) {
    return ExchangeBuyStockActiveState1State(
      exchangeBuyStockActiveState1ModelObj:
          exchangeBuyStockActiveState1ModelObj ??
              this.exchangeBuyStockActiveState1ModelObj,
    );
  }
}
