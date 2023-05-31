import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lms/view/mobile/pages/courses/quiz.dart';
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
          "answer":
              "Administer an epinephrine auto-injector (EpiPen) if available and seek immediate medical help"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option C"
        }
      ]
    },
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
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option A"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option C"
        }
      ]
    },
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
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option A"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option C"
        }
      ]
    },
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
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option A"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option C"
        }
      ]
    },
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
          "question": "Question 1",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option A"
        },
        {
          "question": "Question 2",
          "options": ["Option A", "Option B", "Option C", "Option D"],
          "answer": "Option C"
        }
      ]
    },
  ];

  @override
  void onInit() {
    super.onInit();
    generateIcons();
    tabController = TabController(length: 4, vsync: this);
  }

  bool checkPrevousCompleted() {
    if (activeStep == 0) {
      isPreviousCompleted.value =
          courseIncludings[activeStep.value]["isCompleted"];
      log("${isPreviousCompleted.value} at 0th index");

      log(courseIncludings[activeStep.value]["isCompleted"].toString());
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

  displayContent() {
    switch (courseIncludings[activeStep.value]["contentTitle"]) {
      case "Quiz":
        videoPlayerController.dispose();
        return Quiz();

      default:
        initVideoControllers(courseIncludings[activeStep.value]['content']);
        return VideoContent();
    }
  }

  generateIcons() {
    for (int i = 0; i < courseIncludings.length; i++) {
      if (courseIncludings[i]["contentTitle"] == "Episode") {
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

  initVideoControllers(videopath) {
    try {
      videoPlayerController = VideoPlayerController.asset(videopath,
          videoPlayerOptions: VideoPlayerOptions(
            allowBackgroundPlayback: false,
          ));
      chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        looping: false,
        aspectRatio: 16 / 9,
        autoPlay: false,
        autoInitialize: true,
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

  @override
  void dispose() {
    Get.delete<VideoPlayerController>();
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }
}


//  {
//       "episode": {
//         "content": "lib/assets/video/butterfly.mp4",
//         "isCompleted": true,
//         "episodeDetails": {
//           "episode": "Episode 1",
//           "duration": "30 minutes",
//           "releaseDate": "2023-05-30"
//         }
//       },
//       "assignment": {
//         "content": "Quiz",
//         "quizQuestions": [
//           {
//             "question": "Question 1",
//             "options": ["Option A", "Option B", "Option C", "Option D"],
//             "answer": "Option A"
//           },
//           {
//             "question": "Question 2",
//             "options": ["Option A", "Option B", "Option C", "Option D"],
//             "answer": "Option C"
//           }
//         ]
//       },
//     }