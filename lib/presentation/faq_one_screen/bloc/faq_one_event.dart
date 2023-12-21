// ignore_for_file: must_be_immutable

part of 'faq_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FaqOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FaqOneEvent extends Equatable {}

/// Event that is dispatched when the FaqOne widget is first created.
class FaqOneInitialEvent extends FaqOneEvent {
  @override
  List<Object?> get props => [];
}
