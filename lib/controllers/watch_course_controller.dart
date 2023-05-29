import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WatchCourseController extends GetxController
    with GetTickerProviderStateMixin {
  var activeStep = 0.obs;

  var upperBound = 6.obs;
  var iconList = <Icon>[].obs;
  late TabController tabController;

  List<String> courseIncludings = [
    "video",
    "assignment",
    "video",
    "assignment",
    "video",
    "assignment",
    "video",
    "assignment",
    "video",
    "assignment",
    "video"
  ];

  @override
  void onInit() {
    super.onInit();
    generateIcons();
    tabController = TabController(length: 4, vsync: this);
  }

  generateIcons() {
    for (int i = 0; i < courseIncludings.length; i++) {
      if (courseIncludings[i] == "video") {
        iconList.add(Icon(Icons.videocam));
      } else {
        iconList.add(Icon(Icons.assessment));
      }
    }
  }
}
