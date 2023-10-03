// ignore_for_file: must_be_immutable

part of 'video_call_bloc.dart';

@immutable
abstract class VideoCallEvent extends Equatable {}

class VideoCallInitialEvent extends VideoCallEvent {
  @override
  List<Object?> get props => [];
}
