import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lms/controllers/watch_course_controller.dart';
import 'package:lms/util/utility.dart';

class WatchCourse extends GetView<WatchCourseController> {
  const WatchCourse({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Obx(() => Column(
                children: [
                  IconStepper(
                    // ignore: invalid_use_of_protected_member
                    icons: controller.iconList.value,
                    activeStep: controller.activeStep.value,
                    stepRadius: size.height * .02,
                    stepReachedAnimationEffect: Curves.decelerate,
                    onStepReached: (index) {
                      controller.activeStep.value = index;
                    },
                  ),
                  controller.displayContent(),
                ],
              ))),
    );
  }
}
