// ignore_for_file: must_be_immutable

part of 'portfolio_vtwo_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PortfolioVtwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PortfolioVtwoEvent extends Equatable {}

/// Event that is dispatched when the PortfolioVtwo widget is first created.
class PortfolioVtwoInitialEvent extends PortfolioVtwoEvent {
  @override
  List<Object?> get props => [];
}
