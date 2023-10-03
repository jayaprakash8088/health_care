import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:healthcareapp/presentation/video_call_screen/models/video_call_model.dart';
part 'video_call_event.dart';
part 'video_call_state.dart';

class VideoCallBloc extends Bloc<VideoCallEvent, VideoCallState> {
  VideoCallBloc(VideoCallState initialState) : super(initialState) {
    on<VideoCallInitialEvent>(_onInitialize);
  }

  _onInitialize(
    VideoCallInitialEvent event,
    Emitter<VideoCallState> emit,
  ) async {}
}
