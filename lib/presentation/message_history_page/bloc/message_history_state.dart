// ignore_for_file: must_be_immutable

part of 'message_history_bloc.dart';

class MessageHistoryState extends Equatable {
  MessageHistoryState({this.messageHistoryModelObj});

  MessageHistoryModel? messageHistoryModelObj;

  @override
  List<Object?> get props => [
        messageHistoryModelObj,
      ];
  MessageHistoryState copyWith({MessageHistoryModel? messageHistoryModelObj}) {
    return MessageHistoryState(
      messageHistoryModelObj:
          messageHistoryModelObj ?? this.messageHistoryModelObj,
    );
  }
}
