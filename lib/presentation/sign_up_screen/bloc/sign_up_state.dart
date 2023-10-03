// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.enternameController,
    this.enteremailController,
    this.enterpasswordController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signUpModelObj,
  });

  TextEditingController? enternameController;

  TextEditingController? enteremailController;

  TextEditingController? enterpasswordController;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        enternameController,
        enteremailController,
        enterpasswordController,
        isShowPassword,
        isCheckbox,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? enternameController,
    TextEditingController? enteremailController,
    TextEditingController? enterpasswordController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      enternameController: enternameController ?? this.enternameController,
      enteremailController: enteremailController ?? this.enteremailController,
      enterpasswordController:
          enterpasswordController ?? this.enterpasswordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
