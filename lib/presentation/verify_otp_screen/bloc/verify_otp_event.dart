// ignore_for_file: must_be_immutable

part of 'verify_otp_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerifyOtp widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerifyOtpEvent extends Equatable {}

/// Event that is dispatched when the VerifyOtp widget is first created.
class VerifyOtpInitialEvent extends VerifyOtpEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerifyOtpEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
