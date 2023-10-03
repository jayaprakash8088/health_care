// ignore_for_file: must_be_immutable

part of 'booking_doctor_success_bloc.dart';

class BookingDoctorSuccessState extends Equatable {
  BookingDoctorSuccessState({this.bookingDoctorSuccessModelObj});

  BookingDoctorSuccessModel? bookingDoctorSuccessModelObj;

  @override
  List<Object?> get props => [
        bookingDoctorSuccessModelObj,
      ];
  BookingDoctorSuccessState copyWith(
      {BookingDoctorSuccessModel? bookingDoctorSuccessModelObj}) {
    return BookingDoctorSuccessState(
      bookingDoctorSuccessModelObj:
          bookingDoctorSuccessModelObj ?? this.bookingDoctorSuccessModelObj,
    );
  }
}
