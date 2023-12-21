// ignore_for_file: must_be_immutable

part of 'create_authentication_fingerprint_bloc.dart';

/// Represents the state of CreateAuthenticationFingerprint in the application.
class CreateAuthenticationFingerprintState extends Equatable {
  CreateAuthenticationFingerprintState(
      {this.createAuthenticationFingerprintModelObj});

  CreateAuthenticationFingerprintModel? createAuthenticationFingerprintModelObj;

  @override
  List<Object?> get props => [
        createAuthenticationFingerprintModelObj,
      ];
  CreateAuthenticationFingerprintState copyWith(
      {CreateAuthenticationFingerprintModel?
          createAuthenticationFingerprintModelObj}) {
    return CreateAuthenticationFingerprintState(
      createAuthenticationFingerprintModelObj:
          createAuthenticationFingerprintModelObj ??
              this.createAuthenticationFingerprintModelObj,
    );
  }
}
