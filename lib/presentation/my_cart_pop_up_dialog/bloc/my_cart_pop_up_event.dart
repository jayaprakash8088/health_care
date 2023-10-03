// ignore_for_file: must_be_immutable

part of 'my_cart_pop_up_bloc.dart';

@immutable
abstract class MyCartPopUpEvent extends Equatable {}

class MyCartPopUpInitialEvent extends MyCartPopUpEvent {
  @override
  List<Object?> get props => [];
}
