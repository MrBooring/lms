import 'package:flutter/material.dart';
import 'package:lms/util/utility.dart';

class ProjectInfo extends StatefulWidget {
  const ProjectInfo({super.key});

  @override
  State<ProjectInfo> createState() => _ProjectInfoState();
}

class _ProjectInfoState extends State<ProjectInfo> {
  List couseincludings = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.deepPurple.shade200,
                  height: size.height * .3,
                  width: size.width,
                  child: Image.asset(
                    "lib/assets/tempbanner/b1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "What is COVID-19 Bootcamp From zero to hero in medical",
                    style: TextStyle(
                      fontSize: size.height * .03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                              onPressed: () {}, child: Text("Wishlist")),
                          ElevatedButton(
                              onPressed: () {}, child: Text("Enroll"))
                        ],
                      ),
                      Divider(),
                      Text(
                        "50 words => Join our comprehensive medical course for aspiring healthcare professionals. Gain theoretical knowledge and practical skills in anatomy, physiology, pathology, pharmacology, and clinical practice. Start your transformative journey now!",
                        textAlign: TextAlign.justify,
                        // overflow: TextOverflow.el lipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: size.height * .02,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "Created By Dr Siddhant Vedpathak",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.live_tv_outlined),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "23 Lessons",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.military_tech_outlined),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "Certificate of Completion",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.update),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "Learn at your Pace",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.graphic_eq),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "English, Hindi, Bengali, Telugu, Marathi, Tamil",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            Text(
                              "This Course Includes",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.videocam),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "CPR",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.assessment_outlined),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "Assesment",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.videocam),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "CPR",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.assessment_outlined),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "Assesment",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.videocam),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "CPR",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Icon(Icons.assessment_outlined),
                            SizedBox(
                              width: size.width * .03,
                            ),
                            const Text(
                              "Assesment",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
