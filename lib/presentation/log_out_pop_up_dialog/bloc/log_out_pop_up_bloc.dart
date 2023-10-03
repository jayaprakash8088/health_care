import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/log_out_pop_up_dialog/models/log_out_pop_up_model.dart';
part 'log_out_pop_up_event.dart';
part 'log_out_pop_up_state.dart';

class LogOutPopUpBloc extends Bloc<LogOutPopUpEvent, LogOutPopUpState> {
  LogOutPopUpBloc(LogOutPopUpState initialState) : super(initialState) {
    on<LogOutPopUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogOutPopUpInitialEvent event,
    Emitter<LogOutPopUpState> emit,
  ) async {}
}
