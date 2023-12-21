// ignore_for_file: must_be_immutable

part of 'password_recovery_email_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PasswordRecoveryEmail widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PasswordRecoveryEmailEvent extends Equatable {}

/// Event that is dispatched when the PasswordRecoveryEmail widget is first created.
class PasswordRecoveryEmailInitialEvent extends PasswordRecoveryEmailEvent {
  @override
  List<Object?> get props => [];
}
