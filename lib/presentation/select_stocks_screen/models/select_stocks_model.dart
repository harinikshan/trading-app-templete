// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'stocklist_item_model.dart';/// This class defines the variables used in the [select_stocks_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelectStocksModel extends Equatable {SelectStocksModel({this.stocklistItemList = const []}) {  }

List<StocklistItemModel> stocklistItemList;

SelectStocksModel copyWith({List<StocklistItemModel>? stocklistItemList}) { return SelectStocksModel(
stocklistItemList : stocklistItemList ?? this.stocklistItemList,
); } 
@override List<Object?> get props => [stocklistItemList];
 }
