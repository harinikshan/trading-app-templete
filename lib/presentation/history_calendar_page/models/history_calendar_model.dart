// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'item1_item_model.dart';/// This class defines the variables used in the [history_calendar_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HistoryCalendarModel extends Equatable {HistoryCalendarModel({this.item1ItemList = const []}) {  }

List<Item1ItemModel> item1ItemList;

HistoryCalendarModel copyWith({List<Item1ItemModel>? item1ItemList}) { return HistoryCalendarModel(
item1ItemList : item1ItemList ?? this.item1ItemList,
); } 
@override List<Object?> get props => [item1ItemList];
 }
