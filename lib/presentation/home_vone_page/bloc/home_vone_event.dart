// ignore_for_file: must_be_immutable

part of 'home_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeVoneEvent extends Equatable {}

/// Event that is dispatched when the HomeVone widget is first created.
class HomeVoneInitialEvent extends HomeVoneEvent {
  @override
  List<Object?> get props => [];
}
