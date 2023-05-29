import 'package:get/get.dart';
import 'package:lms/binders/login_bindings.dart';
import 'package:lms/binders/onboarding_bindings.dart';
import 'package:lms/binders/watch_course_bindings.dart';
import 'package:lms/view/mobile/pages/auth/login.dart';
import 'package:lms/view/mobile/pages/dashpages/dashboard.dart';
import 'package:lms/view/mobile/pages/onboarding/onboarding.dart';
import 'package:lms/view/mobile/widgets/course_info.dart';
import 'package:lms/view/mobile/widgets/watch_course.dart';

var routes = [
  GetPage(
    name: "/",
    page: () => Login(),
    binding: LoginBinder(),
  ),
  GetPage(
    name: "/onboarding",
    page: () => Onboarding(),
    binding: OnbordingBindings(),
  ),
  GetPage(
    name: "/dashboard",
    page: () => Dashboard(),
  ),
  GetPage(
    name: "/courseinfo",
    page: () => const ProjectInfo(),
  ),
  GetPage(
    name: "/watchcourse",
    page: () => const WatchCourse(),
    binding: WatchCoursesBindings(),
  ),
];
