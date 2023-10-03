// ignore_for_file: must_be_immutable

part of 'sign_up_success_bloc.dart';

@immutable
abstract class SignUpSuccessEvent extends Equatable {}

class SignUpSuccessInitialEvent extends SignUpSuccessEvent {
  @override
  List<Object?> get props => [];
}
