// ignore_for_file: must_be_immutable

part of 'my_cart_pop_up_bloc.dart';

class MyCartPopUpState extends Equatable {
  MyCartPopUpState({this.myCartPopUpModelObj});

  MyCartPopUpModel? myCartPopUpModelObj;

  @override
  List<Object?> get props => [
        myCartPopUpModelObj,
      ];
  MyCartPopUpState copyWith({MyCartPopUpModel? myCartPopUpModelObj}) {
    return MyCartPopUpState(
      myCartPopUpModelObj: myCartPopUpModelObj ?? this.myCartPopUpModelObj,
    );
  }
}
