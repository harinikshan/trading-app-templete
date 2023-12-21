// ignore_for_file: must_be_immutable

part of 'otp_authentication_code_bloc.dart';

/// Represents the state of OtpAuthenticationCode in the application.
class OtpAuthenticationCodeState extends Equatable {
  OtpAuthenticationCodeState({
    this.otpController,
    this.otpAuthenticationCodeModelObj,
  });

  TextEditingController? otpController;

  OtpAuthenticationCodeModel? otpAuthenticationCodeModelObj;

  @override
  List<Object?> get props => [
        otpController,
        otpAuthenticationCodeModelObj,
      ];
  OtpAuthenticationCodeState copyWith({
    TextEditingController? otpController,
    OtpAuthenticationCodeModel? otpAuthenticationCodeModelObj,
  }) {
    return OtpAuthenticationCodeState(
      otpController: otpController ?? this.otpController,
      otpAuthenticationCodeModelObj:
          otpAuthenticationCodeModelObj ?? this.otpAuthenticationCodeModelObj,
    );
  }
}
