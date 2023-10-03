import '../models/chipviewgroupthirtysix_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewgroupthirtysix_item_model.dart';
import 'package:healthcareapp/presentation/doctor_detail_screen/models/doctor_detail_model.dart';
part 'doctor_detail_event.dart';
part 'doctor_detail_state.dart';

class DoctorDetailBloc extends Bloc<DoctorDetailEvent, DoctorDetailState> {
  DoctorDetailBloc(DoctorDetailState initialState) : super(initialState) {
    on<DoctorDetailInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    DoctorDetailInitialEvent event,
    Emitter<DoctorDetailState> emit,
  ) async {
    emit(state.copyWith(
        doctorDetailModelObj: state.doctorDetailModelObj?.copyWith(
            chipviewgroupthirtysixItemList:
                fillChipviewgroupthirtysixItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<DoctorDetailState> emit,
  ) {
    List<ChipviewgroupthirtysixItemModel> newList =
        List<ChipviewgroupthirtysixItemModel>.from(
            state.doctorDetailModelObj!.chipviewgroupthirtysixItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        doctorDetailModelObj: state.doctorDetailModelObj
            ?.copyWith(chipviewgroupthirtysixItemList: newList)));
  }

  List<ChipviewgroupthirtysixItemModel> fillChipviewgroupthirtysixItemList() {
    return List.generate(9, (index) => ChipviewgroupthirtysixItemModel());
  }
}
