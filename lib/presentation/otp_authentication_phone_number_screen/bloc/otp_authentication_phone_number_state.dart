// ignore_for_file: must_be_immutable

part of 'otp_authentication_phone_number_bloc.dart';

/// Represents the state of OtpAuthenticationPhoneNumber in the application.
class OtpAuthenticationPhoneNumberState extends Equatable {
  OtpAuthenticationPhoneNumberState({
    this.phoneNumberController,
    this.selectedCountry,
    this.otpAuthenticationPhoneNumberModelObj,
  });

  TextEditingController? phoneNumberController;

  OtpAuthenticationPhoneNumberModel? otpAuthenticationPhoneNumberModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        phoneNumberController,
        selectedCountry,
        otpAuthenticationPhoneNumberModelObj,
      ];
  OtpAuthenticationPhoneNumberState copyWith({
    TextEditingController? phoneNumberController,
    Country? selectedCountry,
    OtpAuthenticationPhoneNumberModel? otpAuthenticationPhoneNumberModelObj,
  }) {
    return OtpAuthenticationPhoneNumberState(
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      otpAuthenticationPhoneNumberModelObj:
          otpAuthenticationPhoneNumberModelObj ??
              this.otpAuthenticationPhoneNumberModelObj,
    );
  }
}
