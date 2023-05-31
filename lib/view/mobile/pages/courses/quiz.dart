import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';
import 'package:lms/util/utility.dart';

class Quiz extends GetView<WatchCourseController> {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
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
                "Question 1/3",
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ],
          ),
          Text(
            controller.courseIncludings[controller.activeStep.value]
                    ["quizQuestions"][controller.questionNum.value]["question"]
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
                child: ElevatedButton(onPressed: () {}, child: Text("data")),
              );
            },
          ),
          Spacer(),
        ],
      ),
    ));
  }
}
