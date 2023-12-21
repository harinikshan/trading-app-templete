// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [timeframes_item_widget] screen.
class TimeframesItemModel extends Equatable {TimeframesItemModel({this.h, this.isSelected, }) { h = h  ?? "12H";isSelected = isSelected  ?? false; }

String? h;

bool? isSelected;

TimeframesItemModel copyWith({String? h, bool? isSelected, }) { return TimeframesItemModel(
h : h ?? this.h,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [h,isSelected];
 }
