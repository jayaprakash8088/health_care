// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

@immutable
abstract class CreateNewPasswordEvent extends Equatable {}

class CreateNewPasswordInitialEvent extends CreateNewPasswordEvent {
  @override
  List<Object?> get props => [];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends CreateNewPasswordEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
