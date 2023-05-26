import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/responsive.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
        mobileBody: Scaffold(
          appBar: AppBar(),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: SizedBox(
                      height: size.height * .01,
                      child: LinearProgressIndicator(
                        value: .8,
                      ),
                    ),
                  ),
                  Text(
                    "Help us to Set up your Account",
                    style: TextStyle(
                      fontSize: size.height * .025,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Name",
                            style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: size.height * .065,
                            // width: size.width * .8,
                            child: TextField(
                              keyboardType: TextInputType.name,
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
                          ),
                          SizedBox(
                            height: size.height * .025,
                          ),
                          Text(
                            "Age",
                            style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: size.height * .065,
                            // width: size.width * .8,
                            child: TextField(
                              keyboardType: TextInputType.number,
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
                          ),
                          SizedBox(
                            height: size.height * .025,
                          ),
                          Text(
                            "State",
                            style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            height: size.height * .065,
                            child: DropdownButtonFormField(
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
                              onChanged: (value) {},
                            ),
                          ),
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: ElevatedButton(
                                onPressed: () {
                                  Get.toNamed("/dashboard");
                                },
                                child: Text("Explore Courses"),
                              ),
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
        desktopBody: Scaffold());
  }
}
