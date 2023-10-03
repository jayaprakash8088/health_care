import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/message_history_tab_container_page/models/message_history_tab_container_model.dart';
part 'message_history_tab_container_event.dart';
part 'message_history_tab_container_state.dart';

class MessageHistoryTabContainerBloc extends Bloc<
    MessageHistoryTabContainerEvent, MessageHistoryTabContainerState> {
  MessageHistoryTabContainerBloc(MessageHistoryTabContainerState initialState)
      : super(initialState) {
    on<MessageHistoryTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageHistoryTabContainerInitialEvent event,
    Emitter<MessageHistoryTabContainerState> emit,
  ) async {}
}
