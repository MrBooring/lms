import 'package:get/get.dart';
import 'package:lms/controllers/login_controller.dart';

class LoginBinder implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController(), fenix: true);
  }
}
