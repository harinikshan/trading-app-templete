// ignore_for_file: must_be_immutable

part of 'portfolio_v1_scroll_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioV1Scroll widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioV1ScrollEvent extends Equatable {}

/// Event that is dispatched when the PortfolioV1Scroll widget is first created.
class PortfolioV1ScrollInitialEvent extends PortfolioV1ScrollEvent {
  @override
  List<Object?> get props => [];
}
