// ignore_for_file: must_be_immutable

part of 'portfolio_vone_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioVone widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioVoneEvent extends Equatable {}

/// Event that is dispatched when the PortfolioVone widget is first created.
class PortfolioVoneInitialEvent extends PortfolioVoneEvent {
  @override
  List<Object?> get props => [];
}
