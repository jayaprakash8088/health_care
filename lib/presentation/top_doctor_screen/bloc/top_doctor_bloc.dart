import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/topdoctor_item_model.dart';
import 'package:healthcareapp/presentation/top_doctor_screen/models/top_doctor_model.dart';
part 'top_doctor_event.dart';
part 'top_doctor_state.dart';

class TopDoctorBloc extends Bloc<TopDoctorEvent, TopDoctorState> {
  TopDoctorBloc(TopDoctorState initialState) : super(initialState) {
    on<TopDoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TopDoctorInitialEvent event,
    Emitter<TopDoctorState> emit,
  ) async {
    emit(state.copyWith(
        topDoctorModelObj: state.topDoctorModelObj
            ?.copyWith(topdoctorItemList: fillTopdoctorItemList())));
  }

  List<TopdoctorItemModel> fillTopdoctorItemList() {
    return List.generate(5, (index) => TopdoctorItemModel());
  }
}
