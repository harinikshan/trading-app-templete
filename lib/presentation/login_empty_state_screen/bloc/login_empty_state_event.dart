// ignore_for_file: must_be_immutable

part of 'login_empty_state_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginEmptyState widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginEmptyStateEvent extends Equatable {}

/// Event that is dispatched when the LoginEmptyState widget is first created.
class LoginEmptyStateInitialEvent extends LoginEmptyStateEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends LoginEmptyStateEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
