// ignore_for_file: must_be_immutable

part of 'home_vtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeVtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeVtwoEvent extends Equatable {}

/// Event that is dispatched when the HomeVtwo widget is first created.
class HomeVtwoInitialEvent extends HomeVtwoEvent {
  @override
  List<Object?> get props => [];
}
