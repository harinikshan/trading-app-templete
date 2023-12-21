// ignore_for_file: must_be_immutable

part of 'confirm_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ConfirmDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ConfirmDetailsEvent extends Equatable {}

/// Event that is dispatched when the ConfirmDetails widget is first created.
class ConfirmDetailsInitialEvent extends ConfirmDetailsEvent {
  @override
  List<Object?> get props => [];
}
