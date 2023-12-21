// ignore_for_file: must_be_immutable

part of 'login_active_state_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginActiveState widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginActiveStateEvent extends Equatable {}

/// Event that is dispatched when the LoginActiveState widget is first created.
class LoginActiveStateInitialEvent extends LoginActiveStateEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginActiveStateEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
