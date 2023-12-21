// ignore_for_file: must_be_immutable

part of 'password_recovery_phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PasswordRecoveryPhoneNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PasswordRecoveryPhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the PasswordRecoveryPhoneNumber widget is first created.
class PasswordRecoveryPhoneNumberInitialEvent
    extends PasswordRecoveryPhoneNumberEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing country code
class ChangeCountryEvent extends PasswordRecoveryPhoneNumberEvent {
  ChangeCountryEvent({required this.value});

  Country value;

  @override
  List<Object?> get props => [
        value,
      ];
}
