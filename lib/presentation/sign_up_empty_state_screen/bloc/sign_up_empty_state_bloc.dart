import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:hari_s_application3/presentation/sign_up_empty_state_screen/models/sign_up_empty_state_model.dart';part 'sign_up_empty_state_event.dart';part 'sign_up_empty_state_state.dart';/// A bloc that manages the state of a SignUpEmptyState according to the event that is dispatched to it.
class SignUpEmptyStateBloc extends Bloc<SignUpEmptyStateEvent, SignUpEmptyStateState> {SignUpEmptyStateBloc(SignUpEmptyStateState initialState) : super(initialState) { on<SignUpEmptyStateInitialEvent>(_onInitialize); on<ChangePasswordVisibilityEvent>(_changePasswordVisibility); on<ChangeCheckBoxEvent>(_changeCheckBox); }

_changePasswordVisibility(ChangePasswordVisibilityEvent event, Emitter<SignUpEmptyStateState> emit, ) { emit(state.copyWith(isShowPassword: event.value)); } 
_changeCheckBox(ChangeCheckBoxEvent event, Emitter<SignUpEmptyStateState> emit, ) { emit(state.copyWith(checkBox: event.value)); } 
_onInitialize(SignUpEmptyStateInitialEvent event, Emitter<SignUpEmptyStateState> emit, ) async  { emit(state.copyWith(fullNameEditTextController: TextEditingController(), emailEditTextController: TextEditingController(), passwordEditTextController: TextEditingController(), isShowPassword: true, checkBox: false)); } 
 }
