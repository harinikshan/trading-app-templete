// ignore_for_file: must_be_immutable

part of 'no_order_bloc.dart';

/// Represents the state of NoOrder in the application.
class NoOrderState extends Equatable {
  NoOrderState({this.noOrderModelObj});

  NoOrderModel? noOrderModelObj;

  @override
  List<Object?> get props => [
        noOrderModelObj,
      ];
  NoOrderState copyWith({NoOrderModel? noOrderModelObj}) {
    return NoOrderState(
      noOrderModelObj: noOrderModelObj ?? this.noOrderModelObj,
    );
  }
}
