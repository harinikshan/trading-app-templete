import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/create_authentication_pin_screen/models/create_authentication_pin_model.dart';part 'create_authentication_pin_event.dart';part 'create_authentication_pin_state.dart';/// A bloc that manages the state of a CreateAuthenticationPin according to the event that is dispatched to it.
class CreateAuthenticationPinBloc extends Bloc<CreateAuthenticationPinEvent, CreateAuthenticationPinState> {CreateAuthenticationPinBloc(CreateAuthenticationPinState initialState) : super(initialState) { on<CreateAuthenticationPinInitialEvent>(_onInitialize); }

_onInitialize(CreateAuthenticationPinInitialEvent event, Emitter<CreateAuthenticationPinState> emit, ) async  {  } 
 }
