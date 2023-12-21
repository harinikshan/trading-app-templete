import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/otp_authentication_screen/models/otp_authentication_model.dart';part 'otp_authentication_event.dart';part 'otp_authentication_state.dart';/// A bloc that manages the state of a OtpAuthentication according to the event that is dispatched to it.
class OtpAuthenticationBloc extends Bloc<OtpAuthenticationEvent, OtpAuthenticationState> {OtpAuthenticationBloc(OtpAuthenticationState initialState) : super(initialState) { on<OtpAuthenticationInitialEvent>(_onInitialize); }

_onInitialize(OtpAuthenticationInitialEvent event, Emitter<OtpAuthenticationState> emit, ) async  {  } 
 }
