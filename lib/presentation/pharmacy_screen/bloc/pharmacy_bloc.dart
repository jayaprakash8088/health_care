import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listef58faa9a71e47e_item_model.dart';
import '../models/listcalciumllysin_item_model.dart';
import 'package:healthcareapp/presentation/pharmacy_screen/models/pharmacy_model.dart';
part 'pharmacy_event.dart';
part 'pharmacy_state.dart';

class PharmacyBloc extends Bloc<PharmacyEvent, PharmacyState> {
  PharmacyBloc(PharmacyState initialState) : super(initialState) {
    on<PharmacyInitialEvent>(_onInitialize);
  }

  List<Listef58faa9a71e47eItemModel> fillListef58faa9a71e47eItemList() {
    return List.generate(3, (index) => Listef58faa9a71e47eItemModel());
  }

  List<ListcalciumllysinItemModel> fillListcalciumllysinItemList() {
    return List.generate(3, (index) => ListcalciumllysinItemModel());
  }

  _onInitialize(
    PharmacyInitialEvent event,
    Emitter<PharmacyState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        pharmacyModelObj: state.pharmacyModelObj?.copyWith(
            listef58faa9a71e47eItemList: fillListef58faa9a71e47eItemList(),
            listcalciumllysinItemList: fillListcalciumllysinItemList())));
  }
}
