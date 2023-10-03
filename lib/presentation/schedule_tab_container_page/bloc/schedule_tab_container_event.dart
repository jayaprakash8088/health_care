// ignore_for_file: must_be_immutable

part of 'schedule_tab_container_bloc.dart';

@immutable
abstract class ScheduleTabContainerEvent extends Equatable {}

class ScheduleTabContainerInitialEvent extends ScheduleTabContainerEvent {
  @override
  List<Object?> get props => [];
}
