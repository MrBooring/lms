import 'package:dashed_circular_progress_bar/dashed_circular_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';
import 'package:lms/util/utility.dart';

class QuizProgress extends GetView<WatchCourseController> {
  const QuizProgress({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(
      () => Expanded(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Spacer(),
              Text(
                "You have Answered ${controller.score.value} Out of ${controller.courseIncludings[controller.activeStep.value]["quizQuestions"].length} Questions Accurately",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.all(50),
                child: DashedCircularProgressBar.aspectRatio(
                  aspectRatio: 1, // width ÷ height
                  // valueNotifier: _valueNotifier,
                  progress: (controller.score /
                          controller
                              .courseIncludings[controller.activeStep.value]
                                  ["quizQuestions"]
                              .length) *
                      100,
                  startAngle: 225,
                  sweepAngle: 270,
                  // foregroundColor: Colors.green,
                  backgroundColor: const Color(0xffeeeeee),
                  foregroundStrokeWidth: 20,
                  backgroundStrokeWidth: 15,
                  maxProgress: 100,
                  animation: true,
                  seekSize: 10,
                  seekColor: const Color(0xffeeeeee),
                  child: Center(
                      child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${(controller.score / controller.courseIncludings[controller.activeStep.value]["quizQuestions"].length) * 100}%',
                        style: Theme.of(context)
                            .textTheme
                            .headlineLarge!
                            .copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                      ),
                      Text(
                        'Accuracy',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.grey),
                      ),
                    ],
                  )),
                ),
              ),
              SizedBox(
                width: size.width * .6,
                child: ElevatedButton(
                  onPressed: () {
                    controller.nextLecture();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade300,
                  ),
                  child: Text(
                    "Proceed to Next Lecture",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(),
                  ),
                ),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
