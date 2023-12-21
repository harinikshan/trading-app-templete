import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/confirm_details_screen/models/confirm_details_model.dart';part 'confirm_details_event.dart';part 'confirm_details_state.dart';/// A bloc that manages the state of a ConfirmDetails according to the event that is dispatched to it.
class ConfirmDetailsBloc extends Bloc<ConfirmDetailsEvent, ConfirmDetailsState> {ConfirmDetailsBloc(ConfirmDetailsState initialState) : super(initialState) { on<ConfirmDetailsInitialEvent>(_onInitialize); }

_onInitialize(ConfirmDetailsInitialEvent event, Emitter<ConfirmDetailsState> emit, ) async  {  } 
 }
