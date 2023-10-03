import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/reset_password_email_tab_container_screen/models/reset_password_email_tab_container_model.dart';
part 'reset_password_email_tab_container_event.dart';
part 'reset_password_email_tab_container_state.dart';

class ResetPasswordEmailTabContainerBloc extends Bloc<
    ResetPasswordEmailTabContainerEvent, ResetPasswordEmailTabContainerState> {
  ResetPasswordEmailTabContainerBloc(
      ResetPasswordEmailTabContainerState initialState)
      : super(initialState) {
    on<ResetPasswordEmailTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordEmailTabContainerInitialEvent event,
    Emitter<ResetPasswordEmailTabContainerState> emit,
  ) async {}
}
