// ignore_for_file: must_be_immutable

part of 'my_account_bloc.dart';

/// Represents the state of MyAccount in the application.
class MyAccountState extends Equatable {
  MyAccountState({
    this.fullNameTextFieldController,
    this.emailTextFieldController,
    this.passwordTextFieldController,
    this.phoneNumberTextFieldController,
    this.isShowPassword = true,
    this.myAccountModelObj,
  });

  TextEditingController? fullNameTextFieldController;

  TextEditingController? emailTextFieldController;

  TextEditingController? passwordTextFieldController;

  TextEditingController? phoneNumberTextFieldController;

  MyAccountModel? myAccountModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        fullNameTextFieldController,
        emailTextFieldController,
        passwordTextFieldController,
        phoneNumberTextFieldController,
        isShowPassword,
        myAccountModelObj,
      ];
  MyAccountState copyWith({
    TextEditingController? fullNameTextFieldController,
    TextEditingController? emailTextFieldController,
    TextEditingController? passwordTextFieldController,
    TextEditingController? phoneNumberTextFieldController,
    bool? isShowPassword,
    MyAccountModel? myAccountModelObj,
  }) {
    return MyAccountState(
      fullNameTextFieldController:
          fullNameTextFieldController ?? this.fullNameTextFieldController,
      emailTextFieldController:
          emailTextFieldController ?? this.emailTextFieldController,
      passwordTextFieldController:
          passwordTextFieldController ?? this.passwordTextFieldController,
      phoneNumberTextFieldController:
          phoneNumberTextFieldController ?? this.phoneNumberTextFieldController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      myAccountModelObj: myAccountModelObj ?? this.myAccountModelObj,
    );
  }
}
