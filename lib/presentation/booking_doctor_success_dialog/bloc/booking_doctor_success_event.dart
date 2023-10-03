// ignore_for_file: must_be_immutable

part of 'booking_doctor_success_bloc.dart';

@immutable
abstract class BookingDoctorSuccessEvent extends Equatable {}

class BookingDoctorSuccessInitialEvent extends BookingDoctorSuccessEvent {
  @override
  List<Object?> get props => [];
}
