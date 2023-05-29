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
          child: Column(
        children: [
          IconStepper(
            icons: controller.iconList.value,
            activeStep: controller.activeStep.value,
            stepRadius: size.height * .02,
            stepReachedAnimationEffect: Curves.decelerate,
            onStepReached: (index) {
              controller.activeStep.value = index;
            },
          ),
          Container(
            color: Colors.black,
            height: size.height * .27,
            width: size.width,
            child: VideoDisplay(),
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
      )),
    );
  }
}
