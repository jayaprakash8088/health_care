import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/create_new_password_success_dialog/models/create_new_password_success_model.dart';
part 'create_new_password_success_event.dart';
part 'create_new_password_success_state.dart';

class CreateNewPasswordSuccessBloc
    extends Bloc<CreateNewPasswordSuccessEvent, CreateNewPasswordSuccessState> {
  CreateNewPasswordSuccessBloc(CreateNewPasswordSuccessState initialState)
      : super(initialState) {
    on<CreateNewPasswordSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CreateNewPasswordSuccessInitialEvent event,
    Emitter<CreateNewPasswordSuccessState> emit,
  ) async {}
}
