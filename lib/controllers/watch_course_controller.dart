import 'dart:developer';

import 'package:chewie/chewie.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lms/view/mobile/widgets/watch_course.dart';
import 'package:video_player/video_player.dart';

class WatchCourseController extends GetxController
    with GetTickerProviderStateMixin {
  var activeStep = 0.obs;

  var upperBound = 6.obs;
  var iconList = <Icon>[].obs;
  late TabController tabController;
  var isPreviousCompleted = false.obs;

  List courseIncludings = [
    {"content": "lib/assets/video/butterfly.mp4", "isCompleted": true},
    {"content": "assignment"},
    {"content": "lib/assets/video/butterfly.mp4", "isCompleted": false},
    {"content": "assignment"},
    {"content": "lib/assets/video/butterfly.mp4", "isCompleted": false},
    {"content": "assignment"},
    {"content": "lib/assets/video/butterfly.mp4", "isCompleted": false},
    {"content": "assignment"},
    {"content": "lib/assets/video/butterfly.mp4", "isCompleted": false},
    {"content": "assignment"},
    {"content": "lib/assets/video/butterfly.mp4", "isCompleted": false},
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
    switch (courseIncludings[activeStep.value]["content"]) {
      case "assignment":
        videoPlayerController.dispose();
        return SizedBox();

      default:
        initControllers(courseIncludings[activeStep.value]['content']);
        return VideoContent();
    }
  }

  generateIcons() {
    for (int i = 0; i < courseIncludings.length; i++) {
      if (courseIncludings[i]["content"] != "assignment") {
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

  initControllers(videopath) {
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
