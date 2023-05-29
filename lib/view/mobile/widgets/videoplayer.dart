import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/videoplayer_controller.dart';

class VideoPlayer extends GetView<CourseVideoPlayerController> {
  const VideoPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chewie(
        controller: controller.chewieController,
      ),
    );
  }
}

class VideoDisplay extends GetView<CourseVideoPlayerController> {
  const VideoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoPlayer(),
    );
  }
}
