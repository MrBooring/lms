import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lms/data/temp_courses.dart';
import 'package:lms/view/mobile/pages/courses/quiz/quiz.dart';
import 'package:lms/view/mobile/pages/courses/quiz/quiz_layout.dart';
import 'package:lms/view/mobile/pages/courses/quiz/quiz_progress_report.dart';
import 'package:lms/view/mobile/pages/courses/video_content.dart';
import 'package:video_player/video_player.dart';

class WatchCourseController extends GetxController
    with GetTickerProviderStateMixin {
  var activeStep = 0.obs;

  var upperBound = 6.obs;
  var iconList = <Icon>[].obs;
  late TabController tabController;
  var isPreviousCompleted = false.obs;
  var questionNum = 0.obs;
  var userAns = 0.obs;
  var realAns = 0.obs;
  var isAnswered = false.obs;
  var isAnsCorrect = false.obs;
  var score = 0.obs;
  var isQuizEnd = false.obs;

  List courseIncludings = [
    {
      "contentTitle": "Episode",
      "description":
          "In this episode, we dive deep into the fascinating world of human anatomy. We explore the various systems of the body, including the skeletal, muscular, circulatory, and nervous systems. Through detailed illustrations and interactive 3D models, you will gain a comprehensive understanding of the structure and function of each system. We will also discuss common medical terms and terminology related to human anatomy. Join us as we unravel the mysteries of the human body and lay a solid foundation for your medical knowledge!",
      "content": "lib/assets/video/butterfly.mp4",
      "isCompleted": true,
      "episodeDetails": {
        "episode": "Episode 1",
        "duration": "30 minutes",
        "releaseDate": "2023-05-30"
      }
    },
    {
      "contentTitle": "Quiz",
      "description":
          "time to put your knowledge to the test with a quiz. This quiz is designed to assess your understanding of the topics covered in the last episode, including medical terminology, and key concepts. Prepare yourself for a series of thought-provoking questions that will challenge your grasp of the material. By taking this quiz, you'll not only reinforce your learning but also identify areas for further improvement. Good luck!",
      "quizQuestions": [
        {
          "question":
              "What is the correct first aid response for a person who is experiencing a severe allergic reaction?",
          "options": [
            "Offer them water to drink.",
            "Keep them warm and elevate their legs",
            "Administer an epinephrine auto-injector (EpiPen) if available and seek immediate medical help",
            "Apply a tourniquet above the affected area to prevent further reaction"
          ],
          "answer": "3"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "3"
        }
      ]
    },
    {
      "contentTitle": "Episode",
      "description":
          "In this episode, we dive deep into the fascinating world of human anatomy. We explore the various systems of the body, including the skeletal, muscular, circulatory, and nervous systems. Through detailed illustrations and interactive 3D models, you will gain a comprehensive understanding of the structure and function of each system. We will also discuss common medical terms and terminology related to human anatomy. Join us as we unravel the mysteries of the human body and lay a solid foundation for your medical knowledge!",
      "content": "lib/assets/video/butterfly.mp4",
      "isCompleted": false,
      "episodeDetails": {
        "episode": "Episode 1",
        "duration": "30 minutes",
        "releaseDate": "2023-05-30"
      }
    },
    {
      "contentTitle": "Quiz",
      "description":
          "time to put your knowledge to the test with a quiz. This quiz is designed to assess your understanding of the topics covered in the last episode, including medical terminology, and key concepts. Prepare yourself for a series of thought-provoking questions that will challenge your grasp of the material. By taking this quiz, you'll not only reinforce your learning but also identify areas for further improvement. Good luck!",
      "quizQuestions": [
        {
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "2"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "3"
        }
      ]
    },
    {
      "contentTitle": "Episode",
      "description":
          "In this episode, we dive deep into the fascinating world of human anatomy. We explore the various systems of the body, including the skeletal, muscular, circulatory, and nervous systems. Through detailed illustrations and interactive 3D models, you will gain a comprehensive understanding of the structure and function of each system. We will also discuss common medical terms and terminology related to human anatomy. Join us as we unravel the mysteries of the human body and lay a solid foundation for your medical knowledge!",
      "content": "lib/assets/video/butterfly.mp4",
      "isCompleted": false,
      "episodeDetails": {
        "episode": "Episode 1",
        "duration": "30 minutes",
        "releaseDate": "2023-05-30"
      }
    },
    {
      "contentTitle": "Quiz",
      "description":
          "time to put your knowledge to the test with a quiz. This quiz is designed to assess your understanding of the topics covered in the last episode, including medical terminology, and key concepts. Prepare yourself for a series of thought-provoking questions that will challenge your grasp of the material. By taking this quiz, you'll not only reinforce your learning but also identify areas for further improvement. Good luck!",
      "quizQuestions": [
        {
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "4"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "3"
        }
      ]
    },
    {
      "contentTitle": "Episode",
      "description":
          "In this episode, we dive deep into the fascinating world of human anatomy. We explore the various systems of the body, including the skeletal, muscular, circulatory, and nervous systems. Through detailed illustrations and interactive 3D models, you will gain a comprehensive understanding of the structure and function of each system. We will also discuss common medical terms and terminology related to human anatomy. Join us as we unravel the mysteries of the human body and lay a solid foundation for your medical knowledge!",
      "content": "lib/assets/video/butterfly.mp4",
      "isCompleted": false,
      "episodeDetails": {
        "episode": "Episode 1",
        "duration": "30 minutes",
        "releaseDate": "2023-05-30"
      }
    },
    {
      "contentTitle": "Quiz",
      "description":
          "time to put your knowledge to the test with a quiz. This quiz is designed to assess your understanding of the topics covered in the last episode, including medical terminology, and key concepts. Prepare yourself for a series of thought-provoking questions that will challenge your grasp of the material. By taking this quiz, you'll not only reinforce your learning but also identify areas for further improvement. Good luck!",
      "quizQuestions": [
        {
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "4"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "3"
        }
      ]
    },
    {
      "contentTitle": "Episode",
      "description":
          "In this episode, we dive deep into the fascinating world of human anatomy. We explore the various systems of the body, including the skeletal, muscular, circulatory, and nervous systems. Through detailed illustrations and interactive 3D models, you will gain a comprehensive understanding of the structure and function of each system. We will also discuss common medical terms and terminology related to human anatomy. Join us as we unravel the mysteries of the human body and lay a solid foundation for your medical knowledge!",
      "content": "lib/assets/video/butterfly.mp4",
      "isCompleted": false,
      "episodeDetails": {
        "episode": "Episode 1",
        "duration": "30 minutes",
        "releaseDate": "2023-05-30"
      }
    },
    {
      "contentTitle": "Quiz",
      "description":
          "time to put your knowledge to the test with a quiz. This quiz is designed to assess your understanding of the topics covered in the last episode, including medical terminology, and key concepts. Prepare yourself for a series of thought-provoking questions that will challenge your grasp of the material. By taking this quiz, you'll not only reinforce your learning but also identify areas for further improvement. Good luck!",
      "quizQuestions": {
        {
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "4"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "3"
        }
      }
    },
  ];

  @override
  void onInit() {
    super.onInit();

    tabController = TabController(length: 4, vsync: this);
    tabController.animateTo(2);
  }

  bool checkPrevousCompleted() {
    if (activeStep == 0) {
      isPreviousCompleted.value =
          courseIncludings[activeStep.value]["isCompleted"];

      return isPreviousCompleted.value;
    } else {
      for (int i = activeStep.value - 1; i >= 0; i--) {
        if (courseIncludings[i].containsKey("isCompleted")) {
          isPreviousCompleted.value = courseIncludings[i]["isCompleted"];
          log("${courseIncludings[i]["isCompleted"]} at ${i}");
          break;
        }
      }
      log(isPreviousCompleted.value.toString());
      return isPreviousCompleted.value;
    }
  }

  displayContent(courseno) {
    generateIcons(courseno);
    switch (courseIncludings[activeStep.value]["contentTitle"]) {
      case "Quiz":
        videoPlayerController.dispose();
        return QuizLayout();

      default:
        initVideoControllers(courseno);
        return VideoContent(
          courseno: courseno,
        );
    }
  }

  generateIcons(courseno) {
    for (int i = 0; i < courses[courseno]["courseContent"].length; i++) {
      iconList.clear();
      // if (courseIncludings[i]["contentTitle"] == "Episode") {
      //   iconList.add(Icon(Icons.videocam));
      // } else {
      //   iconList.add(Icon(Icons.assessment));
      // }

      if (courses[courseno]["courseContent"][i]['contentType'].toString() ==
          "Episode") {
        iconList.add(Icon(Icons.videocam));
      } else {
        iconList.add(Icon(Icons.assessment));
      }
    }
  }

  //video player Controls
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  late Duration videoDuration;
  var currentPos;

  initVideoControllers(courseno) {
    try {
      videoPlayerController = VideoPlayerController.asset(
          courses[courseno]['courseContent'][activeStep.value]['content']
              .toString(),
          videoPlayerOptions: VideoPlayerOptions(
            allowBackgroundPlayback: false,
          ));

      // videoPlayerController = VideoPlayerController.network(
      //     "https://drive.google.com/file/d/1qrJ2yRHOESG5vq1QUewMxR-714NRxoPO",
      //     videoPlayerOptions: VideoPlayerOptions(
      //       allowBackgroundPlayback: false,
      //     ));
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        looping: false,
        aspectRatio: 16 / 9,
        autoPlay: false,
        autoInitialize: true,
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              errorMessage,
              style: TextStyle(color: Colors.white),
            ),
          );
          // return Dialog(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(10),
          //         child: Text(
          //           "We ran into an unexpected error",
          //           style: TextStyle(
          //             fontSize: 25,
          //             fontWeight: FontWeight.bold,
          //           ),
          //         ),
          //       ),
          //       Text(errorMessage.toString())
          //     ],
          //   ),
          // );
        },
      );

      videoPlayerController.addListener(checkVideo);
      videoDuration = videoPlayerController.value.duration;
    } catch (e) {
      log(e.toString());
    }
  }

  void checkVideo() {
    // Implement your calls inside these conditions' bodies :
    bool isPlaying = videoPlayerController.value.isPlaying;

    if (isPlaying == false) {
      Future.delayed(Duration(milliseconds: 500), () {
        if (videoPlayerController.value.position ==
            Duration(seconds: 0, minutes: 0, hours: 0)) {
          log('video Started');
        }
      });

      if (!videoPlayerController.value.isBuffering &&
          videoPlayerController.value.position ==
              videoPlayerController.value.duration) {
        courseIncludings[activeStep.value]["isCompleted"] = true;
        activeStep.value++;

        videoPlayerController.dispose();
        chewieController.dispose();
        log('video Ended');
      }
    }
  }

  checkPosition() {
    currentPos = videoPlayerController.value.position;
    if (videoDuration == currentPos) {
      // videoPlayerController.value.
    }
  }

  //Quiz Controlls

  quizLayout() {
    switch (isQuizEnd.value) {
      case true:
        return QuizProgress();

      default:
        return Quiz();
    }
  }

  checkAnswer(optionno) {
    isAnswered.value = true;
    userAns.value = optionno;
    realAns.value = int.parse(courseIncludings[activeStep.value]
        ["quizQuestions"][questionNum.value]["answer"]);
    realAns -= 1;
    if (userAns.value == realAns.value) {
      isAnsCorrect.value = true;
      log("answer is correct");
    } else {
      isAnsCorrect.value = false;
      log("answer is NOT COrrect");
    }
  }

  nextQuestion() {
    if (isAnsCorrect.value == true) {
      score++;
    }
    if ((questionNum.value <
        courseIncludings[activeStep.value]["quizQuestions"].length - 1)) {
      questionNum.value++;
    } else {
      isQuizEnd.value = true;
    }

    userAns.value = 0;
    realAns.value = 0;
    isAnswered.value = false;
    isAnsCorrect.value = false;
  }

  nextLecture() {
    activeStep.value++;
    userAns.value = 0;
    realAns.value = 0;
    score.value = 0;
    isQuizEnd.value = false;
    isAnswered.value = false;
    isAnsCorrect.value = false;
  }

  @override
  void dispose() {
    Get.delete<VideoPlayerController>();
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}
