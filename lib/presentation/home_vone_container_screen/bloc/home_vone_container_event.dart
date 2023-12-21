// ignore_for_file: must_be_immutable

part of 'home_vone_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeVoneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeVoneContainerEvent extends Equatable {}

/// Event that is dispatched when the HomeVoneContainer widget is first created.
class HomeVoneContainerInitialEvent extends HomeVoneContainerEvent {
  @override
  List<Object?> get props => [];
}
