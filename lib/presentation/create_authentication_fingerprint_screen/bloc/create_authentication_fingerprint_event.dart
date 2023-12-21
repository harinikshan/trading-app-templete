// ignore_for_file: must_be_immutable

part of 'create_authentication_fingerprint_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CreateAuthenticationFingerprint widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CreateAuthenticationFingerprintEvent extends Equatable {}

/// Event that is dispatched when the CreateAuthenticationFingerprint widget is first created.
class CreateAuthenticationFingerprintInitialEvent
    extends CreateAuthenticationFingerprintEvent {
  @override
  List<Object?> get props => [];
}
