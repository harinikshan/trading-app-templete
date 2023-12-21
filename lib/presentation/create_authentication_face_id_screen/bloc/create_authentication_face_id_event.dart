// ignore_for_file: must_be_immutable

part of 'create_authentication_face_id_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAuthenticationFaceId widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateAuthenticationFaceIdEvent extends Equatable {}

/// Event that is dispatched when the CreateAuthenticationFaceId widget is first created.
class CreateAuthenticationFaceIdInitialEvent
    extends CreateAuthenticationFaceIdEvent {
  @override
  List<Object?> get props => [];
}
