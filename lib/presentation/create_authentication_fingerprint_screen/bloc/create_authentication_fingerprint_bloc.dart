import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/create_authentication_fingerprint_screen/models/create_authentication_fingerprint_model.dart';part 'create_authentication_fingerprint_event.dart';part 'create_authentication_fingerprint_state.dart';/// A bloc that manages the state of a CreateAuthenticationFingerprint according to the event that is dispatched to it.
class CreateAuthenticationFingerprintBloc extends Bloc<CreateAuthenticationFingerprintEvent, CreateAuthenticationFingerprintState> {CreateAuthenticationFingerprintBloc(CreateAuthenticationFingerprintState initialState) : super(initialState) { on<CreateAuthenticationFingerprintInitialEvent>(_onInitialize); }

_onInitialize(CreateAuthenticationFingerprintInitialEvent event, Emitter<CreateAuthenticationFingerprintState> emit, ) async  {  } 
 }
