import 'package:get/get.dart';

import 'package:lms/controllers/watch_course_controller.dart';

class WatchCoursesBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WatchCourseController(), fenix: true);
  }
}
