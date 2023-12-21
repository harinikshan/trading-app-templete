// ignore_for_file: must_be_immutable

part of 'referral_code_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ReferralCode widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ReferralCodeEvent extends Equatable {}

/// Event that is dispatched when the ReferralCode widget is first created.
class ReferralCodeInitialEvent extends ReferralCodeEvent {
  @override
  List<Object?> get props => [];
}
