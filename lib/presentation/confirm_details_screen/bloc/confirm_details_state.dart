// ignore_for_file: must_be_immutable

part of 'confirm_details_bloc.dart';

/// Represents the state of ConfirmDetails in the application.
class ConfirmDetailsState extends Equatable {
  ConfirmDetailsState({this.confirmDetailsModelObj});

  ConfirmDetailsModel? confirmDetailsModelObj;

  @override
  List<Object?> get props => [
        confirmDetailsModelObj,
      ];
  ConfirmDetailsState copyWith({ConfirmDetailsModel? confirmDetailsModelObj}) {
    return ConfirmDetailsState(
      confirmDetailsModelObj:
          confirmDetailsModelObj ?? this.confirmDetailsModelObj,
    );
  }
}
