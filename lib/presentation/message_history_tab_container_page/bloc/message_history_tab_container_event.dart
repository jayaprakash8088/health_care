// ignore_for_file: must_be_immutable

part of 'message_history_tab_container_bloc.dart';

@immutable
abstract class MessageHistoryTabContainerEvent extends Equatable {}

class MessageHistoryTabContainerInitialEvent
    extends MessageHistoryTabContainerEvent {
  @override
  List<Object?> get props => [];
}
