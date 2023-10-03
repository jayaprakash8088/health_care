import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/booking_doctor_success_dialog/models/booking_doctor_success_model.dart';
part 'booking_doctor_success_event.dart';
part 'booking_doctor_success_state.dart';

class BookingDoctorSuccessBloc
    extends Bloc<BookingDoctorSuccessEvent, BookingDoctorSuccessState> {
  BookingDoctorSuccessBloc(BookingDoctorSuccessState initialState)
      : super(initialState) {
    on<BookingDoctorSuccessInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingDoctorSuccessInitialEvent event,
    Emitter<BookingDoctorSuccessState> emit,
  ) async {}
}
