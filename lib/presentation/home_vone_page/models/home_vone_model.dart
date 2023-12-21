// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'stockitem_item_model.dart';/// This class defines the variables used in the [home_vone_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeVoneModel extends Equatable {HomeVoneModel({this.stockitemItemList = const []}) {  }

List<StockitemItemModel> stockitemItemList;

HomeVoneModel copyWith({List<StockitemItemModel>? stockitemItemList}) { return HomeVoneModel(
stockitemItemList : stockitemItemList ?? this.stockitemItemList,
); } 
@override List<Object?> get props => [stockitemItemList];
 }
