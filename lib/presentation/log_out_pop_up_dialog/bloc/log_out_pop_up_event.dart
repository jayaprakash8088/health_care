// ignore_for_file: must_be_immutable

part of 'log_out_pop_up_bloc.dart';

@immutable
abstract class LogOutPopUpEvent extends Equatable {}

class LogOutPopUpInitialEvent extends LogOutPopUpEvent {
  @override
  List<Object?> get props => [];
}
