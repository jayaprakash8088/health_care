import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/onboarding_two_screen/models/onboarding_two_model.dart';
part 'onboarding_two_event.dart';
part 'onboarding_two_state.dart';

class OnboardingTwoBloc extends Bloc<OnboardingTwoEvent, OnboardingTwoState> {
  OnboardingTwoBloc(OnboardingTwoState initialState) : super(initialState) {
    on<OnboardingTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingTwoInitialEvent event,
    Emitter<OnboardingTwoState> emit,
  ) async {}
}
