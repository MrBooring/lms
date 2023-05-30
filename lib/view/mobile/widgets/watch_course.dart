import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:im_stepper/stepper.dart';
import 'package:lms/controllers/watch_course_controller.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/mobile/widgets/videoplayer.dart';

class WatchCourse extends GetView<WatchCourseController> {
  const WatchCourse({super.key});

  @override
  Widget build(BuildContext context) {
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

// ignore: must_be_immutable
class VideoContent extends StatelessWidget {
  VideoContent({
    super.key,
  });

  var controller = Get.find<WatchCourseController>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        // height: size.height * .7,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: size.height * .27,
              width: size.width,
              child: IgnorePointer(
                ignoring: !controller.checkPrevousCompleted(),
                child: Stack(children: [
                  VideoDisplay(),
                  controller.isPreviousCompleted == false
                      ? Center(
                          child: ClipRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: size.width * .9,
                                height: size.height * .25,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade200.withOpacity(0.5)),
                                child: Center(
                                  child: Text(
                                      'Please Complete Previous Lectures',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ]),
              ),
            ),
            TabBar(
              controller: controller.tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 25),
              tabs: [
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  text: "Course Content",
                ),
                Tab(
                  text: "Overview",
                ),
                Tab(
                  text: "Notes",
                ),
              ],
            ),
            Expanded(
                child:
                    TabBarView(controller: controller.tabController, children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "Search in Course Content",
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 10),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Search For lectures or Notes",
                      style: TextStyle(
                        fontSize: size.height * .025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer()
                  ],
                ),
              ),
              Container(),
              Container(),
              Container(),
            ]))
          ],
        ),
      ),
    );
  }
}
