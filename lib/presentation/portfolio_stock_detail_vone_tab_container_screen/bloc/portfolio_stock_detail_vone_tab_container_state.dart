// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_vone_tab_container_bloc.dart';

/// Represents the state of PortfolioStockDetailVoneTabContainer in the application.
class PortfolioStockDetailVoneTabContainerState extends Equatable {
  PortfolioStockDetailVoneTabContainerState(
      {this.portfolioStockDetailVoneTabContainerModelObj});

  PortfolioStockDetailVoneTabContainerModel?
      portfolioStockDetailVoneTabContainerModelObj;

  @override
  List<Object?> get props => [
        portfolioStockDetailVoneTabContainerModelObj,
      ];
  PortfolioStockDetailVoneTabContainerState copyWith(
      {PortfolioStockDetailVoneTabContainerModel?
          portfolioStockDetailVoneTabContainerModelObj}) {
    return PortfolioStockDetailVoneTabContainerState(
      portfolioStockDetailVoneTabContainerModelObj:
          portfolioStockDetailVoneTabContainerModelObj ??
              this.portfolioStockDetailVoneTabContainerModelObj,
    );
  }
}
