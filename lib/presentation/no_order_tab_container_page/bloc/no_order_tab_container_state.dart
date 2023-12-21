// ignore_for_file: must_be_immutable

part of 'no_order_tab_container_bloc.dart';

/// Represents the state of NoOrderTabContainer in the application.
class NoOrderTabContainerState extends Equatable {
  NoOrderTabContainerState({this.noOrderTabContainerModelObj});

  NoOrderTabContainerModel? noOrderTabContainerModelObj;

  @override
  List<Object?> get props => [
        noOrderTabContainerModelObj,
      ];
  NoOrderTabContainerState copyWith(
      {NoOrderTabContainerModel? noOrderTabContainerModelObj}) {
    return NoOrderTabContainerState(
      noOrderTabContainerModelObj:
          noOrderTabContainerModelObj ?? this.noOrderTabContainerModelObj,
    );
  }
}
