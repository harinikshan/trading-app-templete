// ignore_for_file: must_be_immutable

part of 'home_vthree_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeVthree widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeVthreeEvent extends Equatable {}

/// Event that is dispatched when the HomeVthree widget is first created.
class HomeVthreeInitialEvent extends HomeVthreeEvent {
  @override
  List<Object?> get props => [];
}
