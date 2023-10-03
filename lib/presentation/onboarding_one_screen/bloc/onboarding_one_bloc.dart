import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/onboarding_one_screen/models/onboarding_one_model.dart';
part 'onboarding_one_event.dart';
part 'onboarding_one_state.dart';

class OnboardingOneBloc extends Bloc<OnboardingOneEvent, OnboardingOneState> {
  OnboardingOneBloc(OnboardingOneState initialState) : super(initialState) {
    on<OnboardingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingOneInitialEvent event,
    Emitter<OnboardingOneState> emit,
  ) async {}
}
