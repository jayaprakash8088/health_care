// ignore_for_file: must_be_immutable

part of 'chat_with_doctor_bloc.dart';

@immutable
abstract class ChatWithDoctorEvent extends Equatable {}

class ChatWithDoctorInitialEvent extends ChatWithDoctorEvent {
  @override
  List<Object?> get props => [];
}
