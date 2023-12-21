// ignore_for_file: must_be_immutable

part of 'portfolio_stock_detail_vtwo_bloc.dart';

/// Represents the state of PortfolioStockDetailVtwo in the application.
class PortfolioStockDetailVtwoState extends Equatable {
  PortfolioStockDetailVtwoState({this.portfolioStockDetailVtwoModelObj});

  PortfolioStockDetailVtwoModel? portfolioStockDetailVtwoModelObj;

  @override
  List<Object?> get props => [
        portfolioStockDetailVtwoModelObj,
      ];
  PortfolioStockDetailVtwoState copyWith(
      {PortfolioStockDetailVtwoModel? portfolioStockDetailVtwoModelObj}) {
    return PortfolioStockDetailVtwoState(
      portfolioStockDetailVtwoModelObj: portfolioStockDetailVtwoModelObj ??
          this.portfolioStockDetailVtwoModelObj,
    );
  }
}
