import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/sign_up_active_state_screen/models/sign_up_active_state_model.dart';part 'sign_up_active_state_event.dart';part 'sign_up_active_state_state.dart';/// A bloc that manages the state of a SignUpActiveState according to the event that is dispatched to it.
class SignUpActiveStateBloc extends Bloc<SignUpActiveStateEvent, SignUpActiveStateState> {SignUpActiveStateBloc(SignUpActiveStateState initialState) : super(initialState) { on<SignUpActiveStateInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpActiveStateState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignUpActiveStateState> emit, ) { emit(state.copyWith(checkmark: event.value)); } 
_onInitialize(SignUpActiveStateInitialEvent event, Emitter<SignUpActiveStateState> emit, ) async  { emit(state.copyWith(fullNameController: TextEditingController(), emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true, checkmark: false)); } 
 }
