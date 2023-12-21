// ignore_for_file: must_be_immutable

part of 'otp_authentication_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpAuthenticationCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpAuthenticationCodeEvent extends Equatable {}

/// Event that is dispatched when the OtpAuthenticationCode widget is first created.
class OtpAuthenticationCodeInitialEvent extends OtpAuthenticationCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends OtpAuthenticationCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
