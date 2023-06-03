import 'package:get/get.dart';

import 'package:lms/controllers/onboarding_controller.dart';

class OnbordingBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OnboardingController(), fenix: true);
  }
}
