import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/onboarding_four_screen/models/onboarding_four_model.dart';
part 'onboarding_four_event.dart';
part 'onboarding_four_state.dart';

class OnboardingFourBloc
    extends Bloc<OnboardingFourEvent, OnboardingFourState> {
  OnboardingFourBloc(OnboardingFourState initialState) : super(initialState) {
    on<OnboardingFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingFourInitialEvent event,
    Emitter<OnboardingFourState> emit,
  ) async {}
}
