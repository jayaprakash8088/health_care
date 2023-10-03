// ignore_for_file: must_be_immutable

part of 'booking_doctor_bloc.dart';

@immutable
abstract class BookingDoctorEvent extends Equatable {}

class BookingDoctorInitialEvent extends BookingDoctorEvent {
  @override
  List<Object?> get props => [];
}
