// ignore_for_file: must_be_immutable

part of 'sign_up_active_state_bloc.dart';

/// Represents the state of SignUpActiveState in the application.
class SignUpActiveStateState extends Equatable {
  SignUpActiveStateState({
    this.fullNameController,
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.checkmark = false,
    this.signUpActiveStateModelObj,
  });

  TextEditingController? fullNameController;

  TextEditingController? emailController;

  TextEditingController? passwordController;

  SignUpActiveStateModel? signUpActiveStateModelObj;

  bool isShowPassword;

  bool checkmark;

  @override
  List<Object?> get props => [
        fullNameController,
        emailController,
        passwordController,
        isShowPassword,
        checkmark,
        signUpActiveStateModelObj,
      ];
  SignUpActiveStateState copyWith({
    TextEditingController? fullNameController,
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? checkmark,
    SignUpActiveStateModel? signUpActiveStateModelObj,
  }) {
    return SignUpActiveStateState(
      fullNameController: fullNameController ?? this.fullNameController,
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      checkmark: checkmark ?? this.checkmark,
      signUpActiveStateModelObj:
          signUpActiveStateModelObj ?? this.signUpActiveStateModelObj,
    );
  }
}
