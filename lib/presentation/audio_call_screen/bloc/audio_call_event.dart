// ignore_for_file: must_be_immutable

part of 'audio_call_bloc.dart';

@immutable
abstract class AudioCallEvent extends Equatable {}

class AudioCallInitialEvent extends AudioCallEvent {
  @override
  List<Object?> get props => [];
}
