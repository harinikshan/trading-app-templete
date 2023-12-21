import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/referral_code_screen/models/referral_code_model.dart';part 'referral_code_event.dart';part 'referral_code_state.dart';/// A bloc that manages the state of a ReferralCode according to the event that is dispatched to it.
class ReferralCodeBloc extends Bloc<ReferralCodeEvent, ReferralCodeState> {ReferralCodeBloc(ReferralCodeState initialState) : super(initialState) { on<ReferralCodeInitialEvent>(_onInitialize); }

_onInitialize(ReferralCodeInitialEvent event, Emitter<ReferralCodeState> emit, ) async  {  } 
 }
