import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';

class VideoPlayer extends GetView<WatchCourseController> {
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

class VideoDisplay extends GetView<WatchCourseController> {
  const VideoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoPlayer(),
    );
  }
}
