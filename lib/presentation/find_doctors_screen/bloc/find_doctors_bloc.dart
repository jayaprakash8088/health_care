import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listuser_item_model.dart';
import '../models/doctors_item_model.dart';
import 'package:healthcareapp/presentation/find_doctors_screen/models/find_doctors_model.dart';
part 'find_doctors_event.dart';
part 'find_doctors_state.dart';

class FindDoctorsBloc extends Bloc<FindDoctorsEvent, FindDoctorsState> {
  FindDoctorsBloc(FindDoctorsState initialState) : super(initialState) {
    on<FindDoctorsInitialEvent>(_onInitialize);
  }

  List<ListuserItemModel> fillListuserItemList() {
    return List.generate(2, (index) => ListuserItemModel());
  }

  List<DoctorsItemModel> fillDoctorsItemList() {
    return List.generate(4, (index) => DoctorsItemModel());
  }

  _onInitialize(
    FindDoctorsInitialEvent event,
    Emitter<FindDoctorsState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        findDoctorsModelObj: state.findDoctorsModelObj?.copyWith(
            listuserItemList: fillListuserItemList(),
            doctorsItemList: fillDoctorsItemList())));
  }
}
