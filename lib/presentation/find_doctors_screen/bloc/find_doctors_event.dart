// ignore_for_file: must_be_immutable

part of 'find_doctors_bloc.dart';

@immutable
abstract class FindDoctorsEvent extends Equatable {}

class FindDoctorsInitialEvent extends FindDoctorsEvent {
  @override
  List<Object?> get props => [];
}
