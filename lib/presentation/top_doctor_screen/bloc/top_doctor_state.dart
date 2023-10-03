// ignore_for_file: must_be_immutable

part of 'top_doctor_bloc.dart';

class TopDoctorState extends Equatable {
  TopDoctorState({this.topDoctorModelObj});

  TopDoctorModel? topDoctorModelObj;

  @override
  List<Object?> get props => [
        topDoctorModelObj,
      ];
  TopDoctorState copyWith({TopDoctorModel? topDoctorModelObj}) {
    return TopDoctorState(
      topDoctorModelObj: topDoctorModelObj ?? this.topDoctorModelObj,
    );
  }
}
