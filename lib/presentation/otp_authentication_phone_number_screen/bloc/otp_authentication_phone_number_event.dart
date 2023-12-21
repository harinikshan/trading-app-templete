// ignore_for_file: must_be_immutable

part of 'otp_authentication_phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OtpAuthenticationPhoneNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OtpAuthenticationPhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the OtpAuthenticationPhoneNumber widget is first created.
class OtpAuthenticationPhoneNumberInitialEvent
    extends OtpAuthenticationPhoneNumberEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends OtpAuthenticationPhoneNumberEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
