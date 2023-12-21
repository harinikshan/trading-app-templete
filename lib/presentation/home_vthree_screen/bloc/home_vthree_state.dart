// ignore_for_file: must_be_immutable

part of 'home_vthree_bloc.dart';

/// Represents the state of HomeVthree in the application.
class HomeVthreeState extends Equatable {
  HomeVthreeState({this.homeVthreeModelObj});

  HomeVthreeModel? homeVthreeModelObj;

  @override
  List<Object?> get props => [
        homeVthreeModelObj,
      ];
  HomeVthreeState copyWith({HomeVthreeModel? homeVthreeModelObj}) {
    return HomeVthreeState(
      homeVthreeModelObj: homeVthreeModelObj ?? this.homeVthreeModelObj,
    );
  }
}
