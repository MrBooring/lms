import 'package:get/get.dart';
import 'package:lms/view/mobile/pages/auth/login.dart';
import 'package:lms/view/mobile/pages/dashpages/dashboard.dart';
import 'package:lms/view/mobile/pages/onboarding/onboarding.dart';
import 'package:lms/view/mobile/widgets/course_info.dart';

var routes = [
  GetPage(
    name: "/",
    page: () => const Login(),
  ),
  GetPage(
    name: "/onboarding",
    page: () => Onboarding(),
  ),
  GetPage(
    name: "/dashboard",
    page: () => Dashboard(),
  ),
  GetPage(
    name: "/courseinfo",
    page: () => const ProjectInfo(),
  ),
];
