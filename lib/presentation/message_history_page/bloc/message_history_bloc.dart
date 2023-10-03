import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listpexelscedricf_item_model.dart';
import 'package:healthcareapp/presentation/message_history_page/models/message_history_model.dart';
part 'message_history_event.dart';
part 'message_history_state.dart';

class MessageHistoryBloc
    extends Bloc<MessageHistoryEvent, MessageHistoryState> {
  MessageHistoryBloc(MessageHistoryState initialState) : super(initialState) {
    on<MessageHistoryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageHistoryInitialEvent event,
    Emitter<MessageHistoryState> emit,
  ) async {
    emit(state.copyWith(
        messageHistoryModelObj: state.messageHistoryModelObj?.copyWith(
      listpexelscedricfItemList: fillListpexelscedricfItemList(),
    )));
  }

  List<ListpexelscedricfItemModel> fillListpexelscedricfItemList() {
    return List.generate(3, (index) => ListpexelscedricfItemModel());
  }
}
