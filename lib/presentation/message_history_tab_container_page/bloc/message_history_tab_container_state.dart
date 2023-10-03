// ignore_for_file: must_be_immutable

part of 'message_history_tab_container_bloc.dart';

class MessageHistoryTabContainerState extends Equatable {
  MessageHistoryTabContainerState({this.messageHistoryTabContainerModelObj});

  MessageHistoryTabContainerModel? messageHistoryTabContainerModelObj;

  @override
  List<Object?> get props => [
        messageHistoryTabContainerModelObj,
      ];
  MessageHistoryTabContainerState copyWith(
      {MessageHistoryTabContainerModel? messageHistoryTabContainerModelObj}) {
    return MessageHistoryTabContainerState(
      messageHistoryTabContainerModelObj: messageHistoryTabContainerModelObj ??
          this.messageHistoryTabContainerModelObj,
    );
  }
}
