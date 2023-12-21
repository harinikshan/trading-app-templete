import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/verify_otp_screen/models/verify_otp_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verify_otp_event.dart';part 'verify_otp_state.dart';/// A bloc that manages the state of a VerifyOtp according to the event that is dispatched to it.
class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> with  CodeAutoFill {VerifyOtpBloc(VerifyOtpState initialState) : super(initialState) { on<VerifyOtpInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<VerifyOtpState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(VerifyOtpInitialEvent event, Emitter<VerifyOtpState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
