import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/create_authentication_face_id_screen/models/create_authentication_face_id_model.dart';part 'create_authentication_face_id_event.dart';part 'create_authentication_face_id_state.dart';/// A bloc that manages the state of a CreateAuthenticationFaceId according to the event that is dispatched to it.
class CreateAuthenticationFaceIdBloc extends Bloc<CreateAuthenticationFaceIdEvent, CreateAuthenticationFaceIdState> {CreateAuthenticationFaceIdBloc(CreateAuthenticationFaceIdState initialState) : super(initialState) { on<CreateAuthenticationFaceIdInitialEvent>(_onInitialize); }

_onInitialize(CreateAuthenticationFaceIdInitialEvent event, Emitter<CreateAuthenticationFaceIdState> emit, ) async  {  } 
 }
