// ignore_for_file: must_be_immutable

part of 'portfolio_v1_scroll_bloc.dart';

/// Represents the state of PortfolioV1Scroll in the application.
class PortfolioV1ScrollState extends Equatable {
  PortfolioV1ScrollState({this.portfolioV1ScrollModelObj});

  PortfolioV1ScrollModel? portfolioV1ScrollModelObj;

  @override
  List<Object?> get props => [
        portfolioV1ScrollModelObj,
      ];
  PortfolioV1ScrollState copyWith(
      {PortfolioV1ScrollModel? portfolioV1ScrollModelObj}) {
    return PortfolioV1ScrollState(
      portfolioV1ScrollModelObj:
          portfolioV1ScrollModelObj ?? this.portfolioV1ScrollModelObj,
    );
  }
}
