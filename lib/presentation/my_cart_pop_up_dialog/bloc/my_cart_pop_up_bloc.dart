import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/my_cart_pop_up_dialog/models/my_cart_pop_up_model.dart';
part 'my_cart_pop_up_event.dart';
part 'my_cart_pop_up_state.dart';

class MyCartPopUpBloc extends Bloc<MyCartPopUpEvent, MyCartPopUpState> {
  MyCartPopUpBloc(MyCartPopUpState initialState) : super(initialState) {
    on<MyCartPopUpInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyCartPopUpInitialEvent event,
    Emitter<MyCartPopUpState> emit,
  ) async {}
}
