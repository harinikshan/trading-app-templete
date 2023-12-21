// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [suggestions_item_widget] screen.
class SuggestionsItemModel extends Equatable {SuggestionsItemModel({this.item, this.isSelected, }) { item = item  ?? "1";isSelected = isSelected  ?? false; }

String? item;

bool? isSelected;

SuggestionsItemModel copyWith({String? item, bool? isSelected, }) { return SuggestionsItemModel(
item : item ?? this.item,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [item,isSelected];
 }
