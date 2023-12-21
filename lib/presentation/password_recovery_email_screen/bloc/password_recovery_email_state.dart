// ignore_for_file: must_be_immutable

part of 'password_recovery_email_bloc.dart';

/// Represents the state of PasswordRecoveryEmail in the application.
class PasswordRecoveryEmailState extends Equatable {
  PasswordRecoveryEmailState({
    this.emailController,
    this.passwordRecoveryEmailModelObj,
  });

  TextEditingController? emailController;

  PasswordRecoveryEmailModel? passwordRecoveryEmailModelObj;

  @override
  List<Object?> get props => [
        emailController,
        passwordRecoveryEmailModelObj,
      ];
  PasswordRecoveryEmailState copyWith({
    TextEditingController? emailController,
    PasswordRecoveryEmailModel? passwordRecoveryEmailModelObj,
  }) {
    return PasswordRecoveryEmailState(
      emailController: emailController ?? this.emailController,
      passwordRecoveryEmailModelObj:
          passwordRecoveryEmailModelObj ?? this.passwordRecoveryEmailModelObj,
    );
  }
}
