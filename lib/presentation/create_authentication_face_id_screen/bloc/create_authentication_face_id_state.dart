// ignore_for_file: must_be_immutable

part of 'create_authentication_face_id_bloc.dart';

/// Represents the state of CreateAuthenticationFaceId in the application.
class CreateAuthenticationFaceIdState extends Equatable {
  CreateAuthenticationFaceIdState({this.createAuthenticationFaceIdModelObj});

  CreateAuthenticationFaceIdModel? createAuthenticationFaceIdModelObj;

  @override
  List<Object?> get props => [
        createAuthenticationFaceIdModelObj,
      ];
  CreateAuthenticationFaceIdState copyWith(
      {CreateAuthenticationFaceIdModel? createAuthenticationFaceIdModelObj}) {
    return CreateAuthenticationFaceIdState(
      createAuthenticationFaceIdModelObj: createAuthenticationFaceIdModelObj ??
          this.createAuthenticationFaceIdModelObj,
    );
  }
}
