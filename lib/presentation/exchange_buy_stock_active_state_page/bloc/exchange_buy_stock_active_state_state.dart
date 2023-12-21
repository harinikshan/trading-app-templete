// ignore_for_file: must_be_immutable

part of 'exchange_buy_stock_active_state_bloc.dart';

/// Represents the state of ExchangeBuyStockActiveState in the application.
class ExchangeBuyStockActiveStateState extends Equatable {
  ExchangeBuyStockActiveStateState({this.exchangeBuyStockActiveStateModelObj});

  ExchangeBuyStockActiveStateModel? exchangeBuyStockActiveStateModelObj;

  @override
  List<Object?> get props => [
        exchangeBuyStockActiveStateModelObj,
      ];
  ExchangeBuyStockActiveStateState copyWith(
      {ExchangeBuyStockActiveStateModel? exchangeBuyStockActiveStateModelObj}) {
    return ExchangeBuyStockActiveStateState(
      exchangeBuyStockActiveStateModelObj:
          exchangeBuyStockActiveStateModelObj ??
              this.exchangeBuyStockActiveStateModelObj,
    );
  }
}
