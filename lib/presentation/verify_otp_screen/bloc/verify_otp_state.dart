// ignore_for_file: must_be_immutable

part of 'verify_otp_bloc.dart';

/// Represents the state of VerifyOtp in the application.
class VerifyOtpState extends Equatable {
  VerifyOtpState({
    this.otpController,
    this.verifyOtpModelObj,
  });

  TextEditingController? otpController;

  VerifyOtpModel? verifyOtpModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verifyOtpModelObj,
      ];
  VerifyOtpState copyWith({
    TextEditingController? otpController,
    VerifyOtpModel? verifyOtpModelObj,
  }) {
    return VerifyOtpState(
      otpController: otpController ?? this.otpController,
      verifyOtpModelObj: verifyOtpModelObj ?? this.verifyOtpModelObj,
    );
  }
}
