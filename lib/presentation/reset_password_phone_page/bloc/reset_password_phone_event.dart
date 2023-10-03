// ignore_for_file: must_be_immutable

part of 'reset_password_phone_bloc.dart';

@immutable
abstract class ResetPasswordPhoneEvent extends Equatable {}

class ResetPasswordPhoneInitialEvent extends ResetPasswordPhoneEvent {
  @override
  List<Object?> get props => [];
}
