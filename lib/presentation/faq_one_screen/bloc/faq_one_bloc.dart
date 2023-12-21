import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/faq_one_screen/models/faq_one_model.dart';part 'faq_one_event.dart';part 'faq_one_state.dart';/// A bloc that manages the state of a FaqOne according to the event that is dispatched to it.
class FaqOneBloc extends Bloc<FaqOneEvent, FaqOneState> {FaqOneBloc(FaqOneState initialState) : super(initialState) { on<FaqOneInitialEvent>(_onInitialize); }

_onInitialize(FaqOneInitialEvent event, Emitter<FaqOneState> emit, ) async  { emit(state.copyWith(replyController: TextEditingController())); } 
 }
