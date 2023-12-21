// ignore_for_file: must_be_immutable

part of 'create_authentication_pin_bloc.dart';

/// Represents the state of CreateAuthenticationPin in the application.
class CreateAuthenticationPinState extends Equatable {
  CreateAuthenticationPinState({this.createAuthenticationPinModelObj});

  CreateAuthenticationPinModel? createAuthenticationPinModelObj;

  @override
  List<Object?> get props => [
        createAuthenticationPinModelObj,
      ];
  CreateAuthenticationPinState copyWith(
      {CreateAuthenticationPinModel? createAuthenticationPinModelObj}) {
    return CreateAuthenticationPinState(
      createAuthenticationPinModelObj: createAuthenticationPinModelObj ??
          this.createAuthenticationPinModelObj,
    );
  }
}
