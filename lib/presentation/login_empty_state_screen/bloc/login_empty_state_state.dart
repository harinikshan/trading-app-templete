// ignore_for_file: must_be_immutable

part of 'login_empty_state_bloc.dart';

/// Represents the state of LoginEmptyState in the application.
class LoginEmptyStateState extends Equatable {
  LoginEmptyStateState({
    this.emailController,
    this.passwordController,
    this.isShowPassword = true,
    this.loginEmptyStateModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? passwordController;

  LoginEmptyStateModel? loginEmptyStateModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        passwordController,
        isShowPassword,
        loginEmptyStateModelObj,
      ];
  LoginEmptyStateState copyWith({
    TextEditingController? emailController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LoginEmptyStateModel? loginEmptyStateModelObj,
  }) {
    return LoginEmptyStateState(
      emailController: emailController ?? this.emailController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginEmptyStateModelObj:
          loginEmptyStateModelObj ?? this.loginEmptyStateModelObj,
    );
  }
}
