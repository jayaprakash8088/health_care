// ignore_for_file: must_be_immutable

part of 'create_new_password_success_bloc.dart';

class CreateNewPasswordSuccessState extends Equatable {
  CreateNewPasswordSuccessState({this.createNewPasswordSuccessModelObj});

  CreateNewPasswordSuccessModel? createNewPasswordSuccessModelObj;

  @override
  List<Object?> get props => [
        createNewPasswordSuccessModelObj,
      ];
  CreateNewPasswordSuccessState copyWith(
      {CreateNewPasswordSuccessModel? createNewPasswordSuccessModelObj}) {
    return CreateNewPasswordSuccessState(
      createNewPasswordSuccessModelObj: createNewPasswordSuccessModelObj ??
          this.createNewPasswordSuccessModelObj,
    );
  }
}
