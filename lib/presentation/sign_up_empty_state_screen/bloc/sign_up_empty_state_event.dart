// ignore_for_file: must_be_immutable

part of 'sign_up_empty_state_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpEmptyState widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpEmptyStateEvent extends Equatable {}

/// Event that is dispatched when the SignUpEmptyState widget is first created.
class SignUpEmptyStateInitialEvent extends SignUpEmptyStateEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignUpEmptyStateEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SignUpEmptyStateEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
