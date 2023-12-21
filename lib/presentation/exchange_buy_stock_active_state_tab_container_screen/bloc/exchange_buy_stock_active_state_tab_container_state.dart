// ignore_for_file: must_be_immutable

part of 'exchange_buy_stock_active_state_tab_container_bloc.dart';

/// Represents the state of ExchangeBuyStockActiveStateTabContainer in the application.
class ExchangeBuyStockActiveStateTabContainerState extends Equatable {
  ExchangeBuyStockActiveStateTabContainerState(
      {this.exchangeBuyStockActiveStateTabContainerModelObj});

  ExchangeBuyStockActiveStateTabContainerModel?
      exchangeBuyStockActiveStateTabContainerModelObj;

  @override
  List<Object?> get props => [
        exchangeBuyStockActiveStateTabContainerModelObj,
      ];
  ExchangeBuyStockActiveStateTabContainerState copyWith(
      {ExchangeBuyStockActiveStateTabContainerModel?
          exchangeBuyStockActiveStateTabContainerModelObj}) {
    return ExchangeBuyStockActiveStateTabContainerState(
      exchangeBuyStockActiveStateTabContainerModelObj:
          exchangeBuyStockActiveStateTabContainerModelObj ??
              this.exchangeBuyStockActiveStateTabContainerModelObj,
    );
  }
}
