// ignore_for_file: must_be_immutable

part of 'sign_up_empty_state_bloc.dart';

/// Represents the state of SignUpEmptyState in the application.
class SignUpEmptyStateState extends Equatable {
  SignUpEmptyStateState({
    this.fullNameEditTextController,
    this.emailEditTextController,
    this.passwordEditTextController,
    this.isShowPassword = true,
    this.checkBox = false,
    this.signUpEmptyStateModelObj,
  });

  TextEditingController? fullNameEditTextController;

  TextEditingController? emailEditTextController;

  TextEditingController? passwordEditTextController;

  SignUpEmptyStateModel? signUpEmptyStateModelObj;

  bool isShowPassword;

  bool checkBox;

  @override
  List<Object?> get props => [
        fullNameEditTextController,
        emailEditTextController,
        passwordEditTextController,
        isShowPassword,
        checkBox,
        signUpEmptyStateModelObj,
      ];
  SignUpEmptyStateState copyWith({
    TextEditingController? fullNameEditTextController,
    TextEditingController? emailEditTextController,
    TextEditingController? passwordEditTextController,
    bool? isShowPassword,
    bool? checkBox,
    SignUpEmptyStateModel? signUpEmptyStateModelObj,
  }) {
    return SignUpEmptyStateState(
      fullNameEditTextController:
          fullNameEditTextController ?? this.fullNameEditTextController,
      emailEditTextController:
          emailEditTextController ?? this.emailEditTextController,
      passwordEditTextController:
          passwordEditTextController ?? this.passwordEditTextController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      checkBox: checkBox ?? this.checkBox,
      signUpEmptyStateModelObj:
          signUpEmptyStateModelObj ?? this.signUpEmptyStateModelObj,
    );
  }
}
