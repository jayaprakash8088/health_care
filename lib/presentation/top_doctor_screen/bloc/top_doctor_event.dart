// ignore_for_file: must_be_immutable

part of 'top_doctor_bloc.dart';

@immutable
abstract class TopDoctorEvent extends Equatable {}

class TopDoctorInitialEvent extends TopDoctorEvent {
  @override
  List<Object?> get props => [];
}
