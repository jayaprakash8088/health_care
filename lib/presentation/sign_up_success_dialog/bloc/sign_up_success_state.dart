// ignore_for_file: must_be_immutable

part of 'sign_up_success_bloc.dart';

class SignUpSuccessState extends Equatable {
  SignUpSuccessState({this.signUpSuccessModelObj});

  SignUpSuccessModel? signUpSuccessModelObj;

  @override
  List<Object?> get props => [
        signUpSuccessModelObj,
      ];
  SignUpSuccessState copyWith({SignUpSuccessModel? signUpSuccessModelObj}) {
    return SignUpSuccessState(
      signUpSuccessModelObj:
          signUpSuccessModelObj ?? this.signUpSuccessModelObj,
    );
  }
}
