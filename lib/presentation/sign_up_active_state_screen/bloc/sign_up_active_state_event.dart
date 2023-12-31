// ignore_for_file: must_be_immutable

part of 'sign_up_active_state_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpActiveState widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpActiveStateEvent extends Equatable {}

/// Event that is dispatched when the SignUpActiveState widget is first created.
class SignUpActiveStateInitialEvent extends SignUpActiveStateEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUpActiveStateEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUpActiveStateEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
