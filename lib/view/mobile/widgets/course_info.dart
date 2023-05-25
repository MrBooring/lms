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
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.deepPurple.shade200,
                  height: size.height * .3,
                  width: size.width,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    "The Complete doctor Bootcamp From zero to hero in medical",
                    style: TextStyle(
                      fontSize: size.height * .03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "50 words ==> Join our comprehensive medical course for aspiring healthcare professionals. Gain theoretical knowledge and practical skills in anatomy, physiology, pathology, pharmacology, and clinical practice. Expert faculty, interactive lectures, labs, and clinical rotations will empower you to make a difference in patients' lives. Start your transformative journey now!",
                  textAlign: TextAlign.justify,
                  // overflow: TextOverflow.el lipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: size.height * .02,
                  ),
                ),
                const Padding(
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    children: [
                      const Icon(Icons.update),
                      SizedBox(
                        width: size.width * .03,
                      ),
                      const Text(
                        "Last Updated : 3/2023",
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
                const Padding(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
