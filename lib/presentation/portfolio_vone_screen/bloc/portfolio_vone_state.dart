// ignore_for_file: must_be_immutable

part of 'portfolio_vone_bloc.dart';

/// Represents the state of PortfolioVone in the application.
class PortfolioVoneState extends Equatable {
  PortfolioVoneState({this.portfolioVoneModelObj});

  PortfolioVoneModel? portfolioVoneModelObj;

  @override
  List<Object?> get props => [
        portfolioVoneModelObj,
      ];
  PortfolioVoneState copyWith({PortfolioVoneModel? portfolioVoneModelObj}) {
    return PortfolioVoneState(
      portfolioVoneModelObj:
          portfolioVoneModelObj ?? this.portfolioVoneModelObj,
    );
  }
}
