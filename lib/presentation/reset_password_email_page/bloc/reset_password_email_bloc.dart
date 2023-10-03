import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/reset_password_email_page/models/reset_password_email_model.dart';
part 'reset_password_email_event.dart';
part 'reset_password_email_state.dart';

class ResetPasswordEmailBloc
    extends Bloc<ResetPasswordEmailEvent, ResetPasswordEmailState> {
  ResetPasswordEmailBloc(ResetPasswordEmailState initialState)
      : super(initialState) {
    on<ResetPasswordEmailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ResetPasswordEmailInitialEvent event,
    Emitter<ResetPasswordEmailState> emit,
  ) async {
    emit(state.copyWith(
      emailController: TextEditingController(),
    ));
  }
}
