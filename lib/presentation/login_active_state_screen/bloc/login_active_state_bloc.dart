import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/login_active_state_screen/models/login_active_state_model.dart';part 'login_active_state_event.dart';part 'login_active_state_state.dart';/// A bloc that manages the state of a LoginActiveState according to the event that is dispatched to it.
class LoginActiveStateBloc extends Bloc<LoginActiveStateEvent, LoginActiveStateState> {LoginActiveStateBloc(LoginActiveStateState initialState) : super(initialState) { on<LoginActiveStateInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LoginActiveStateState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(LoginActiveStateInitialEvent event, Emitter<LoginActiveStateState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), languageController: TextEditingController(), isShowPassword: true)); } 
 }
