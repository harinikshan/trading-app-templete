import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/login_empty_state_screen/models/login_empty_state_model.dart';part 'login_empty_state_event.dart';part 'login_empty_state_state.dart';/// A bloc that manages the state of a LoginEmptyState according to the event that is dispatched to it.
class LoginEmptyStateBloc extends Bloc<LoginEmptyStateEvent, LoginEmptyStateState> {LoginEmptyStateBloc(LoginEmptyStateState initialState) : super(initialState) { on<LoginEmptyStateInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<LoginEmptyStateState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_onInitialize(LoginEmptyStateInitialEvent event, Emitter<LoginEmptyStateState> emit, ) async  { emit(state.copyWith(emailController: TextEditingController(), passwordController: TextEditingController(), isShowPassword: true)); } 
 }
