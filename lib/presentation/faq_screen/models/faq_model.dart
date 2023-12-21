// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import '../../../core/app_export.dart';import 'questionabout_item_model.dart';/// This class defines the variables used in the [faq_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaqModel extends Equatable {FaqModel({this.questionaboutItemList = const []}) {  }

List<QuestionaboutItemModel> questionaboutItemList;

FaqModel copyWith({List<QuestionaboutItemModel>? questionaboutItemList}) { return FaqModel(
questionaboutItemList : questionaboutItemList ?? this.questionaboutItemList,
); } 
@override List<Object?> get props => [questionaboutItemList];
 }
