import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';

class VideoPlayer extends GetView<WatchCourseController> {
  const VideoPlayer({required this.courseno, super.key});
  final courseno;
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
  const VideoDisplay({required this.courseno, super.key});
  final courseno;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: VideoPlayer(
        courseno: courseno,
      ),
    );
  }
}
