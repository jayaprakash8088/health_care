// ignore_for_file: must_be_immutable

part of 'login_success_bloc.dart';

@immutable
abstract class LoginSuccessEvent extends Equatable {}

class LoginSuccessInitialEvent extends LoginSuccessEvent {
  @override
  List<Object?> get props => [];
}
