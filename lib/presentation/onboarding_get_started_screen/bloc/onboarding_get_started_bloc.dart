import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:hari_s_application3/presentation/onboarding_get_started_screen/models/onboarding_get_started_model.dart';
part 'onboarding_get_started_event.dart';
part 'onboarding_get_started_state.dart';

/// A bloc that manages the state of a OnboardingGetStarted according to the event that is dispatched to it.
class OnboardingGetStartedBloc
    extends Bloc<OnboardingGetStartedEvent, OnboardingGetStartedState> {
  OnboardingGetStartedBloc(OnboardingGetStartedState initialState)
      : super(initialState) {
    on<OnboardingGetStartedInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingGetStartedInitialEvent event,
    Emitter<OnboardingGetStartedState> emit,
  ) async {}
}
