import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/schedule_tab_container_page/models/schedule_tab_container_model.dart';
part 'schedule_tab_container_event.dart';
part 'schedule_tab_container_state.dart';

class ScheduleTabContainerBloc
    extends Bloc<ScheduleTabContainerEvent, ScheduleTabContainerState> {
  ScheduleTabContainerBloc(ScheduleTabContainerState initialState)
      : super(initialState) {
    on<ScheduleTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScheduleTabContainerInitialEvent event,
    Emitter<ScheduleTabContainerState> emit,
  ) async {}
}
