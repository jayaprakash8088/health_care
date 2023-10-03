// ignore_for_file: must_be_immutable

part of 'reset_password_email_bloc.dart';

@immutable
abstract class ResetPasswordEmailEvent extends Equatable {}

class ResetPasswordEmailInitialEvent extends ResetPasswordEmailEvent {
  @override
  List<Object?> get props => [];
}
