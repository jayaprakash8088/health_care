// ignore_for_file: must_be_immutable

part of 'audio_call_bloc.dart';

class AudioCallState extends Equatable {
  AudioCallState({this.audioCallModelObj});

  AudioCallModel? audioCallModelObj;

  @override
  List<Object?> get props => [
        audioCallModelObj,
      ];
  AudioCallState copyWith({AudioCallModel? audioCallModelObj}) {
    return AudioCallState(
      audioCallModelObj: audioCallModelObj ?? this.audioCallModelObj,
    );
  }
}
