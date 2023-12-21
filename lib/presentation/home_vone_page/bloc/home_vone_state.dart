// ignore_for_file: must_be_immutable

part of 'home_vone_bloc.dart';

/// Represents the state of HomeVone in the application.
class HomeVoneState extends Equatable {
  HomeVoneState({this.homeVoneModelObj});

  HomeVoneModel? homeVoneModelObj;

  @override
  List<Object?> get props => [
        homeVoneModelObj,
      ];
  HomeVoneState copyWith({HomeVoneModel? homeVoneModelObj}) {
    return HomeVoneState(
      homeVoneModelObj: homeVoneModelObj ?? this.homeVoneModelObj,
    );
  }
}
