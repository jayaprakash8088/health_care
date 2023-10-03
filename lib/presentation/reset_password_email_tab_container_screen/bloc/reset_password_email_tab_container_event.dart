// ignore_for_file: must_be_immutable

part of 'reset_password_email_tab_container_bloc.dart';

@immutable
abstract class ResetPasswordEmailTabContainerEvent extends Equatable {}

class ResetPasswordEmailTabContainerInitialEvent
    extends ResetPasswordEmailTabContainerEvent {
  @override
  List<Object?> get props => [];
}
