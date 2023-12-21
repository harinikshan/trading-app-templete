// ignore_for_file: must_be_immutable

part of 'portfolio_vtwo_bloc.dart';

/// Represents the state of PortfolioVtwo in the application.
class PortfolioVtwoState extends Equatable {
  PortfolioVtwoState({this.portfolioVtwoModelObj});

  PortfolioVtwoModel? portfolioVtwoModelObj;

  @override
  List<Object?> get props => [
        portfolioVtwoModelObj,
      ];
  PortfolioVtwoState copyWith({PortfolioVtwoModel? portfolioVtwoModelObj}) {
    return PortfolioVtwoState(
      portfolioVtwoModelObj:
          portfolioVtwoModelObj ?? this.portfolioVtwoModelObj,
    );
  }
}
