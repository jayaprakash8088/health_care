// ignore_for_file: must_be_immutable

part of 'create_new_password_success_bloc.dart';

@immutable
abstract class CreateNewPasswordSuccessEvent extends Equatable {}

class CreateNewPasswordSuccessInitialEvent
    extends CreateNewPasswordSuccessEvent {
  @override
  List<Object?> get props => [];
}
