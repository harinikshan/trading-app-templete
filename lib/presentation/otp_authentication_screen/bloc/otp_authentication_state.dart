// ignore_for_file: must_be_immutable

part of 'otp_authentication_bloc.dart';

/// Represents the state of OtpAuthentication in the application.
class OtpAuthenticationState extends Equatable {
  OtpAuthenticationState({this.otpAuthenticationModelObj});

  OtpAuthenticationModel? otpAuthenticationModelObj;

  @override
  List<Object?> get props => [
        otpAuthenticationModelObj,
      ];
  OtpAuthenticationState copyWith(
      {OtpAuthenticationModel? otpAuthenticationModelObj}) {
    return OtpAuthenticationState(
      otpAuthenticationModelObj:
          otpAuthenticationModelObj ?? this.otpAuthenticationModelObj,
    );
  }
}
