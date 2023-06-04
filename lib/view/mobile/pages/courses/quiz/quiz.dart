import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';
import 'package:lms/util/utility.dart';

class Quiz extends GetView<WatchCourseController> {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Obx(
        () => Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "Quiz",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                children: [
                  Text(
                    "Question ${controller.questionNum}/${controller.courseIncludings[controller.activeStep.value]["quizQuestions"].length}",
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                ],
              ),
              Text(
                controller.courseIncludings[controller.activeStep.value]
                        ["quizQuestions"][controller.questionNum.value]
                        ["question"]
                    .toString(),
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: size.height * .025),
                // maxLines: 4,
              ),
              Spacer(),
              ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ElevatedButton(
                      onPressed: controller.isAnswered.value
                          ? controller.isAnsCorrect.value
                              ? controller.userAns.value == index
                                  ? () {}
                                  : null
                              : controller.userAns.value == index
                                  ? () {}
                                  : controller.realAns.value == index
                                      ? () {}
                                      : null
                          : () {
                              controller.checkAnswer(index);
                            },
                      style: ElevatedButton.styleFrom(
                        shape: BeveledRectangleBorder(),
                        backgroundColor: controller.isAnswered.value
                            ? controller.isAnsCorrect.value
                                ? controller.userAns.value == index
                                    ? Colors.green
                                    : null
                                : controller.userAns.value == index
                                    ? Colors.red
                                    : controller.realAns.value == index
                                        ? Colors.green.shade400
                                        : null
                            : null,
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          controller.courseIncludings[
                                  controller.activeStep.value]["quizQuestions"]
                              [controller.questionNum.value]["options"][index],
                          style: TextStyle(
                            color: controller.isAnswered.value
                                ? controller.isAnsCorrect.value
                                    ? controller.userAns.value == index
                                        ? Colors.black
                                        : null
                                    : controller.userAns.value == index
                                        ? Colors.white
                                        : controller.realAns.value == index
                                            ? Colors.black
                                            : null
                                : null,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
              Spacer(),
              ElevatedButton(
                onPressed: controller.isAnswered.value
                    ? () {
                        controller.nextQuestion();
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade300,
                ),
                child: Text(
                  "Next Question",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
