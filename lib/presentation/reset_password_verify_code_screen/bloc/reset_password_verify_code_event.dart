// ignore_for_file: must_be_immutable

part of 'reset_password_verify_code_bloc.dart';

@immutable
abstract class ResetPasswordVerifyCodeEvent extends Equatable {}

class ResetPasswordVerifyCodeInitialEvent extends ResetPasswordVerifyCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends ResetPasswordVerifyCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
