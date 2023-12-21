// ignore_for_file: must_be_immutable

part of 'otp_authentication_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpAuthentication widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpAuthenticationEvent extends Equatable {}

/// Event that is dispatched when the OtpAuthentication widget is first created.
class OtpAuthenticationInitialEvent extends OtpAuthenticationEvent {
  @override
  List<Object?> get props => [];
}
