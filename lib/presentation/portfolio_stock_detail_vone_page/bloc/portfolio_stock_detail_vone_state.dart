// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_vone_bloc.dart';

/// Represents the state of PortfolioStockDetailVone in the application.
class PortfolioStockDetailVoneState extends Equatable {
  PortfolioStockDetailVoneState({this.portfolioStockDetailVoneModelObj});

  PortfolioStockDetailVoneModel? portfolioStockDetailVoneModelObj;

  @override
  List<Object?> get props => [
        portfolioStockDetailVoneModelObj,
      ];
  PortfolioStockDetailVoneState copyWith(
      {PortfolioStockDetailVoneModel? portfolioStockDetailVoneModelObj}) {
    return PortfolioStockDetailVoneState(
      portfolioStockDetailVoneModelObj: portfolioStockDetailVoneModelObj ??
          this.portfolioStockDetailVoneModelObj,
    );
  }
}
