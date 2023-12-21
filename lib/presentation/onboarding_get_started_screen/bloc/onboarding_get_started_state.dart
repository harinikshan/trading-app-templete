// ignore_for_file: must_be_immutable

part of 'onboarding_get_started_bloc.dart';

/// Represents the state of OnboardingGetStarted in the application.
class OnboardingGetStartedState extends Equatable {
  OnboardingGetStartedState({this.onboardingGetStartedModelObj});

  OnboardingGetStartedModel? onboardingGetStartedModelObj;

  @override
  List<Object?> get props => [
        onboardingGetStartedModelObj,
      ];
  OnboardingGetStartedState copyWith(
      {OnboardingGetStartedModel? onboardingGetStartedModelObj}) {
    return OnboardingGetStartedState(
      onboardingGetStartedModelObj:
          onboardingGetStartedModelObj ?? this.onboardingGetStartedModelObj,
    );
  }
}
