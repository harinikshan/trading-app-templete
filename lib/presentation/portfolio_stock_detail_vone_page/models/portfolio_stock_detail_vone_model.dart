// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'timeframes_item_model.dart';/// This class defines the variables used in the [portfolio_stock_detail_vone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PortfolioStockDetailVoneModel extends Equatable {PortfolioStockDetailVoneModel({this.timeframesItemList = const []}) {  }

List<TimeframesItemModel> timeframesItemList;

PortfolioStockDetailVoneModel copyWith({List<TimeframesItemModel>? timeframesItemList}) { return PortfolioStockDetailVoneModel(
timeframesItemList : timeframesItemList ?? this.timeframesItemList,
); } 
@override List<Object?> get props => [timeframesItemList];
 }
