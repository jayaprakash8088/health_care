import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/booking_doctor_screen/models/booking_doctor_model.dart';
part 'booking_doctor_event.dart';
part 'booking_doctor_state.dart';

class BookingDoctorBloc extends Bloc<BookingDoctorEvent, BookingDoctorState> {
  BookingDoctorBloc(BookingDoctorState initialState) : super(initialState) {
    on<BookingDoctorInitialEvent>(_onInitialize);
  }

  _onInitialize(
    BookingDoctorInitialEvent event,
    Emitter<BookingDoctorState> emit,
  ) async {}
}
