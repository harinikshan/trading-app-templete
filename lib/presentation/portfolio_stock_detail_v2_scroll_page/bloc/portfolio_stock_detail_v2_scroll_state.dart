// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_v2_scroll_bloc.dart';

/// Represents the state of PortfolioStockDetailV2Scroll in the application.
class PortfolioStockDetailV2ScrollState extends Equatable {
  PortfolioStockDetailV2ScrollState(
      {this.portfolioStockDetailV2ScrollModelObj});

  PortfolioStockDetailV2ScrollModel? portfolioStockDetailV2ScrollModelObj;

  @override
  List<Object?> get props => [
        portfolioStockDetailV2ScrollModelObj,
      ];
  PortfolioStockDetailV2ScrollState copyWith(
      {PortfolioStockDetailV2ScrollModel?
          portfolioStockDetailV2ScrollModelObj}) {
    return PortfolioStockDetailV2ScrollState(
      portfolioStockDetailV2ScrollModelObj:
          portfolioStockDetailV2ScrollModelObj ??
              this.portfolioStockDetailV2ScrollModelObj,
    );
  }
}
