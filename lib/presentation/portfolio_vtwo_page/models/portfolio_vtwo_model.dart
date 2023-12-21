// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'stockitem1_item_model.dart';/// This class defines the variables used in the [portfolio_vtwo_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PortfolioVtwoModel extends Equatable {PortfolioVtwoModel({this.stockitem1ItemList = const []}) {  }

List<Stockitem1ItemModel> stockitem1ItemList;

PortfolioVtwoModel copyWith({List<Stockitem1ItemModel>? stockitem1ItemList}) { return PortfolioVtwoModel(
stockitem1ItemList : stockitem1ItemList ?? this.stockitem1ItemList,
); } 
@override List<Object?> get props => [stockitem1ItemList];
 }
