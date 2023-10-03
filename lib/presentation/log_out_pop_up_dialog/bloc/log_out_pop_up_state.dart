// ignore_for_file: must_be_immutable

part of 'log_out_pop_up_bloc.dart';

class LogOutPopUpState extends Equatable {
  LogOutPopUpState({this.logOutPopUpModelObj});

  LogOutPopUpModel? logOutPopUpModelObj;

  @override
  List<Object?> get props => [
        logOutPopUpModelObj,
      ];
  LogOutPopUpState copyWith({LogOutPopUpModel? logOutPopUpModelObj}) {
    return LogOutPopUpState(
      logOutPopUpModelObj: logOutPopUpModelObj ?? this.logOutPopUpModelObj,
    );
  }
}
