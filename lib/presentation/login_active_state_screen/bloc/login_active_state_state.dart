// ignore_for_file: must_be_immutable

part of 'login_active_state_bloc.dart';

/// Represents the state of LoginActiveState in the application.
class LoginActiveStateState extends Equatable {
  LoginActiveStateState({
    this.emailController,
    this.languageController,
    this.isShowPassword = true,
    this.loginActiveStateModelObj,
  });

  TextEditingController? emailController;

  TextEditingController? languageController;

  LoginActiveStateModel? loginActiveStateModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        emailController,
        languageController,
        isShowPassword,
        loginActiveStateModelObj,
      ];
  LoginActiveStateState copyWith({
    TextEditingController? emailController,
    TextEditingController? languageController,
    bool? isShowPassword,
    LoginActiveStateModel? loginActiveStateModelObj,
  }) {
    return LoginActiveStateState(
      emailController: emailController ?? this.emailController,
      languageController: languageController ?? this.languageController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      loginActiveStateModelObj:
          loginActiveStateModelObj ?? this.loginActiveStateModelObj,
    );
  }
}
