import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/questionabout_item_model.dart';import 'package:hari_s_application3/presentation/faq_screen/models/faq_model.dart';part 'faq_event.dart';part 'faq_state.dart';/// A bloc that manages the state of a Faq according to the event that is dispatched to it.
class FaqBloc extends Bloc<FaqEvent, FaqState> {FaqBloc(FaqState initialState) : super(initialState) { on<FaqInitialEvent>(_onInitialize); }

List<QuestionaboutItemModel> fillQuestionaboutItemList() { return [QuestionaboutItemModel(userImage: ImageConstant.imgUserPrimary24x24, questionsAbout: "Questions about", gettingStarted: "Getting Started")]; } 
_onInitialize(FaqInitialEvent event, Emitter<FaqState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); emit(state.copyWith(faqModelObj: state.faqModelObj?.copyWith(questionaboutItemList: fillQuestionaboutItemList()))); } 
 }
