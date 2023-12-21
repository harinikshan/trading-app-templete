// ignore_for_file: must_be_immutable

part of 'home_vone_container_bloc.dart';

/// Represents the state of HomeVoneContainer in the application.
class HomeVoneContainerState extends Equatable {
  HomeVoneContainerState({this.homeVoneContainerModelObj});

  HomeVoneContainerModel? homeVoneContainerModelObj;

  @override
  List<Object?> get props => [
        homeVoneContainerModelObj,
      ];
  HomeVoneContainerState copyWith(
      {HomeVoneContainerModel? homeVoneContainerModelObj}) {
    return HomeVoneContainerState(
      homeVoneContainerModelObj:
          homeVoneContainerModelObj ?? this.homeVoneContainerModelObj,
    );
  }
}
