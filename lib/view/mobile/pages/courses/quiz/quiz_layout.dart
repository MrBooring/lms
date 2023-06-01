import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';

class QuizLayout extends GetView<WatchCourseController> {
  const QuizLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(child: controller.quizLayout()));
  }
}
