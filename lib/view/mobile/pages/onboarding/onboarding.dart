import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/onboarding_controller.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/responsive.dart';

class Onboarding extends GetView<OnboardingController> {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    var textsize = MediaQuery.of(context).textScaleFactor;
    Size size = MediaQuery.of(context).size;
    return ResponsiveLayout(
        mobileBody: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/assets/bg/v3.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: SizedBox(
                        height: size.height * .01,
                        child: Obx(
                          () => LinearProgressIndicator(
                            value: controller.progress.value,
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                        // flex: /,
                        ),
                    Text(
                      "Help us to Set up your Account",
                      style: TextStyle(
                        fontSize: textsize * 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Obx(() => TextField(
                                  keyboardType: TextInputType.name,
                                  onChanged: (value) {
                                    controller.nameValidations(value);
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.deny(RegExp(
                                        r'[0-9@#$%^&*()_+={}|[\]\\\<>\,.?/]')),
                                  ],
                                  onEditingComplete: () {
                                    controller.progress.value = .3;
                                  },
                                  decoration: InputDecoration(
                                    errorText: controller.errorname.value == ""
                                        ? null
                                        : controller.errorname.value,
                                    border: OutlineInputBorder(),
                                    contentPadding: EdgeInsets.symmetric(
                                      vertical: size.height * .019,
                                      horizontal: size.width * .03,
                                    ),
                                  ),
                                  style: TextStyle(
                                    fontSize: textsize * 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                            SizedBox(
                              height: size.height * .025,
                            ),
                            Text(
                              "Age",
                              style: TextStyle(
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Obx(
                              () => TextFormField(
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  controller.ageValidations(value);
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'^[0-9]+$')),
                                  LengthLimitingTextInputFormatter(2)
                                ],
                                decoration: InputDecoration(
                                  errorText: controller.errorage.value == ""
                                      ? null
                                      : controller.errorage.value,
                                  border: OutlineInputBorder(),
                                  contentPadding: EdgeInsets.symmetric(
                                    vertical: size.height * .019,
                                    horizontal: size.width * .03,
                                  ),
                                ),
                                style: TextStyle(
                                  fontSize: textsize * 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * .025,
                            ),
                            Text(
                              "State",
                              style: TextStyle(
                                fontSize: textsize * 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            DropdownButtonFormField(
                              isDense: true,
                              items: ['Maharashtra', 'Gujrat', 'Goa']
                                  .map((String value) {
                                return DropdownMenuItem(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: size.height * .01,
                                      horizontal: size.width * .05),
                                  border: OutlineInputBorder()),
                              onChanged: (value) {
                                controller.stateChanged(value);
                              },
                            ),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Obx(() => ElevatedButton(
                                      onPressed:
                                          controller.progress.value == .95
                                              ? () {
                                                  controller.homepage();
                                                }
                                              : () {
                                                  Get.toNamed("/dashboard");
                                                },
                                      child: Text("Explore Courses"),
                                    )),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        desktopBody: Scaffold());
  }
}
