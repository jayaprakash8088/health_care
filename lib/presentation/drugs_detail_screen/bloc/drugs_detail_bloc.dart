import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/drugs_detail_screen/models/drugs_detail_model.dart';
part 'drugs_detail_event.dart';
part 'drugs_detail_state.dart';

class DrugsDetailBloc extends Bloc<DrugsDetailEvent, DrugsDetailState> {
  DrugsDetailBloc(DrugsDetailState initialState) : super(initialState) {
    on<DrugsDetailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DrugsDetailInitialEvent event,
    Emitter<DrugsDetailState> emit,
  ) async {}
}
