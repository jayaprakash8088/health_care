// ignore_for_file: must_be_immutable

part of 'message_history_bloc.dart';

@immutable
abstract class MessageHistoryEvent extends Equatable {}

class MessageHistoryInitialEvent extends MessageHistoryEvent {
  @override
  List<Object?> get props => [];
}
