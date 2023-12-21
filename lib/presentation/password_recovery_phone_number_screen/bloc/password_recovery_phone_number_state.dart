// ignore_for_file: must_be_immutable

part of 'password_recovery_phone_number_bloc.dart';

/// Represents the state of PasswordRecoveryPhoneNumber in the application.
class PasswordRecoveryPhoneNumberState extends Equatable {
  PasswordRecoveryPhoneNumberState({
    this.phoneNumberController,
    this.selectedCountry,
    this.passwordRecoveryPhoneNumberModelObj,
  });

  TextEditingController? phoneNumberController;

  PasswordRecoveryPhoneNumberModel? passwordRecoveryPhoneNumberModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        passwordRecoveryPhoneNumberModelObj,
      ];
  PasswordRecoveryPhoneNumberState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    PasswordRecoveryPhoneNumberModel? passwordRecoveryPhoneNumberModelObj,
  }) {
    return PasswordRecoveryPhoneNumberState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      passwordRecoveryPhoneNumberModelObj:
          passwordRecoveryPhoneNumberModelObj ??
              this.passwordRecoveryPhoneNumberModelObj,
    );
  }
}
