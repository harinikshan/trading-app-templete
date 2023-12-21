import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/otp_authentication_code_screen/models/otp_authentication_code_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'otp_authentication_code_event.dart';part 'otp_authentication_code_state.dart';/// A bloc that manages the state of a OtpAuthenticationCode according to the event that is dispatched to it.
class OtpAuthenticationCodeBloc extends Bloc<OtpAuthenticationCodeEvent, OtpAuthenticationCodeState> with  CodeAutoFill {OtpAuthenticationCodeBloc(OtpAuthenticationCodeState initialState) : super(initialState) { on<OtpAuthenticationCodeInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<OtpAuthenticationCodeState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(OtpAuthenticationCodeInitialEvent event, Emitter<OtpAuthenticationCodeState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
