import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/schedule_item_model.dart';
import 'package:healthcareapp/presentation/schedule_page/models/schedule_model.dart';
part 'schedule_event.dart';
part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  ScheduleBloc(ScheduleState initialState) : super(initialState) {
    on<ScheduleInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScheduleInitialEvent event,
    Emitter<ScheduleState> emit,
  ) async {
    emit(state.copyWith(
        scheduleModelObj: state.scheduleModelObj?.copyWith(
      scheduleItemList: fillScheduleItemList(),
    )));
  }

  List<ScheduleItemModel> fillScheduleItemList() {
    return List.generate(2, (index) => ScheduleItemModel());
  }
}
