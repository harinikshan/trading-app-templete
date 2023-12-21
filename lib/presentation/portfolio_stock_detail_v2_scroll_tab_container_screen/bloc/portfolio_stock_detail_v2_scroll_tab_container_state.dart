// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_v2_scroll_tab_container_bloc.dart';

/// Represents the state of PortfolioStockDetailV2ScrollTabContainer in the application.
class PortfolioStockDetailV2ScrollTabContainerState extends Equatable {
  PortfolioStockDetailV2ScrollTabContainerState(
      {this.portfolioStockDetailV2ScrollTabContainerModelObj});

  PortfolioStockDetailV2ScrollTabContainerModel?
      portfolioStockDetailV2ScrollTabContainerModelObj;

  @override
  List<Object?> get props => [
        portfolioStockDetailV2ScrollTabContainerModelObj,
      ];
  PortfolioStockDetailV2ScrollTabContainerState copyWith(
      {PortfolioStockDetailV2ScrollTabContainerModel?
          portfolioStockDetailV2ScrollTabContainerModelObj}) {
    return PortfolioStockDetailV2ScrollTabContainerState(
      portfolioStockDetailV2ScrollTabContainerModelObj:
          portfolioStockDetailV2ScrollTabContainerModelObj ??
              this.portfolioStockDetailV2ScrollTabContainerModelObj,
    );
  }
}
