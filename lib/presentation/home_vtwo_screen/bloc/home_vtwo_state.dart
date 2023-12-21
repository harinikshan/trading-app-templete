// ignore_for_file: must_be_immutable

part of 'home_vtwo_bloc.dart';

/// Represents the state of HomeVtwo in the application.
class HomeVtwoState extends Equatable {
  HomeVtwoState({this.homeVtwoModelObj});

  HomeVtwoModel? homeVtwoModelObj;

  @override
  List<Object?> get props => [
        homeVtwoModelObj,
      ];
  HomeVtwoState copyWith({HomeVtwoModel? homeVtwoModelObj}) {
    return HomeVtwoState(
      homeVtwoModelObj: homeVtwoModelObj ?? this.homeVtwoModelObj,
    );
  }
}
