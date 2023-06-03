import 'package:get/get.dart';

class OnboardingController extends GetxController {
  var progress = 0.0.obs;
  var name = "".obs;
  var age = "".obs;
  var state = "".obs;
  var errorname = "".obs;
  var errorage = "".obs;

  nameValidations(tname) {
    name.value = tname;
    if (RegExp(r'^\w+\s\w+$').hasMatch(name.value)) {
      progress.value = .4;
      errorname.value = "";
    } else {
      progress.value = .05;
      errorname.value = "Enter first and last name";
    }
  }

  ageValidations(tage) {
    age.value = tage;

    for (int i = 0; i <= 18; i++) {
      if (age.value == "$i") {
        errorage.value = "18+ Only";
        print(errorage.value);
        progress.value = .4;
        break;
      } else {
        progress.value = .7;
        errorage.value = "";
      }
    }
  }

  stateChanged(tstate) {
    state.value = tstate;
    if (state.value != "") {
      progress.value = .95;
    }
  }

  homepage() {
    if (errorname.value == "" && errorage == "" && state.value != "")
      Get.toNamed("/dashboard");
  }
}
