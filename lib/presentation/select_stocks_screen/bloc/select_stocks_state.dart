// ignore_for_file: must_be_immutable

part of 'select_stocks_bloc.dart';

/// Represents the state of SelectStocks in the application.
class SelectStocksState extends Equatable {
  SelectStocksState({
    this.searchController,
    this.selectStocksModelObj,
  });

  TextEditingController? searchController;

  SelectStocksModel? selectStocksModelObj;

  @override
  List<Object?> get props => [
        searchController,
        selectStocksModelObj,
      ];
  SelectStocksState copyWith({
    TextEditingController? searchController,
    SelectStocksModel? selectStocksModelObj,
  }) {
    return SelectStocksState(
      searchController: searchController ?? this.searchController,
      selectStocksModelObj: selectStocksModelObj ?? this.selectStocksModelObj,
    );
  }
}
