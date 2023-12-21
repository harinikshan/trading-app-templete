// ignore_for_file: must_be_immutable

part of 'create_authentication_pin_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAuthenticationPin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateAuthenticationPinEvent extends Equatable {}

/// Event that is dispatched when the CreateAuthenticationPin widget is first created.
class CreateAuthenticationPinInitialEvent extends CreateAuthenticationPinEvent {
  @override
  List<Object?> get props => [];
}
