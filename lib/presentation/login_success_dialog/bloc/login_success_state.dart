// ignore_for_file: must_be_immutable

part of 'login_success_bloc.dart';

class LoginSuccessState extends Equatable {
  LoginSuccessState({this.loginSuccessModelObj});

  LoginSuccessModel? loginSuccessModelObj;

  @override
  List<Object?> get props => [
        loginSuccessModelObj,
      ];
  LoginSuccessState copyWith({LoginSuccessModel? loginSuccessModelObj}) {
    return LoginSuccessState(
      loginSuccessModelObj: loginSuccessModelObj ?? this.loginSuccessModelObj,
    );
  }
}
