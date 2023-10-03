// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.inputController,
    this.inputOneController,
    this.isShowPassword = true,
    this.createNewPasswordModelObj,
  });

  TextEditingController? inputController;

  TextEditingController? inputOneController;

  CreateNewPasswordModel? createNewPasswordModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        inputController,
        inputOneController,
        isShowPassword,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? inputController,
    TextEditingController? inputOneController,
    bool? isShowPassword,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      inputController: inputController ?? this.inputController,
      inputOneController: inputOneController ?? this.inputOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
