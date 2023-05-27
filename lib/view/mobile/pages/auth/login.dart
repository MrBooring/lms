import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/login_controller.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/responsive.dart';

class Login extends GetView<LoginController> {
  Login({super.key});

  var tempbool = 0.obs;
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopBody: Scaffold(),
      mobileBody: Scaffold(
        body: Stack(
          children: [
            // Expanded(
            //   child: Image.asset(
            //     "lib/assets/tempbanner/bg.png",
            //     fit: BoxFit.contain,
            //   ),
            // ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: SizedBox(
                          width: size.width * .7,
                          height: size.height * .1,
                          child: Image.asset("lib/assets/logo/logo.png"),
                        ),
                      ),
                      SizedBox(
                        height: size.height * .025,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * .02),
                        child: Text(
                          "Mobile Number",
                          style: TextStyle(
                            fontSize: size.height * .02,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Obx(() => TextField(
                            controller: controller.phnocontroller,
                            inputFormatters: [
                              FilteringTextInputFormatter.deny(RegExp(r'[.*]')),
                              LengthLimitingTextInputFormatter(10)
                            ],
                            onChanged: (value) {
                              print(value);
                              controller.validation(value);
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              errorText: controller.errortext.value.isEmpty
                                  ? null
                                  : controller.errortext.value,
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.symmetric(
                                vertical: size.height * .019,
                                horizontal: size.width * .03,
                              ),
                            ),
                            style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: size.width * .02),
                        child: Text(
                          "OTP",
                          style: TextStyle(
                            fontSize: size.height * .02,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      TextField(
                        enabled: controller.isOtpSent.value,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.deny(RegExp(r'[.*]')),
                          LengthLimitingTextInputFormatter(4)
                        ],
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: size.height * .019,
                            horizontal: size.width * .03,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: size.height * .02,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: size.height * .02,
                      ),
                      Center(
                        child: Obx(
                          () => ElevatedButton(
                            onPressed: () {
                              controller
                                  .validation(controller.phnocontroller.text);
                            },
                            child: Text(controller.isOtpSent.value == false
                                ? "Request OTP"
                                : "Login"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  login(value) {
    if (value == true) {
      Get.toNamed("/onboarding");
    }
  }
}
