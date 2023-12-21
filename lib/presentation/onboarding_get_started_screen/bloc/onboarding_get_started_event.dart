// ignore_for_file: must_be_immutable

part of 'onboarding_get_started_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingGetStarted widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingGetStartedEvent extends Equatable {}

/// Event that is dispatched when the OnboardingGetStarted widget is first created.
class OnboardingGetStartedInitialEvent extends OnboardingGetStartedEvent {
  @override
  List<Object?> get props => [];
}
