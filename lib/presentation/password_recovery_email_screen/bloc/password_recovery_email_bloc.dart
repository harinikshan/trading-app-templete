import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/password_recovery_email_screen/models/password_recovery_email_model.dart';part 'password_recovery_email_event.dart';part 'password_recovery_email_state.dart';/// A bloc that manages the state of a PasswordRecoveryEmail according to the event that is dispatched to it.
class PasswordRecoveryEmailBloc extends Bloc<PasswordRecoveryEmailEvent, PasswordRecoveryEmailState> {PasswordRecoveryEmailBloc(PasswordRecoveryEmailState initialState) : super(initialState) { on<PasswordRecoveryEmailInitialEvent>(_onInitialize); }

_onInitialize(PasswordRecoveryEmailInitialEvent event, Emitter<PasswordRecoveryEmailState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController())); } 
 }
