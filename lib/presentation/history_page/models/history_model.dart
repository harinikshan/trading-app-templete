// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'item_item_model.dart';/// This class defines the variables used in the [history_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryModel extends Equatable {HistoryModel({this.itemItemList = const []}) {  }

List<ItemItemModel> itemItemList;

HistoryModel copyWith({List<ItemItemModel>? itemItemList}) { return HistoryModel(
itemItemList : itemItemList ?? this.itemItemList,
); } 
@override List<Object?> get props => [itemItemList];
 }
