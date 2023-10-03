// ignore_for_file: must_be_immutable

part of 'schedule_bloc.dart';

@immutable
abstract class ScheduleEvent extends Equatable {}

class ScheduleInitialEvent extends ScheduleEvent {
  @override
  List<Object?> get props => [];
}
