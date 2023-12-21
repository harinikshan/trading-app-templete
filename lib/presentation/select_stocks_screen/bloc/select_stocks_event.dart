// ignore_for_file: must_be_immutable

part of 'select_stocks_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SelectStocks widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SelectStocksEvent extends Equatable {}

/// Event that is dispatched when the SelectStocks widget is first created.
class SelectStocksInitialEvent extends SelectStocksEvent {
  @override
  List<Object?> get props => [];
}
