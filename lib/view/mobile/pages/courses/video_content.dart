import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/watch_course_controller.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/mobile/widgets/videoplayer.dart';

// ignore: must_be_immutable
class VideoContent extends StatelessWidget {
  VideoContent({
    super.key,
  });

  var controller = Get.find<WatchCourseController>();
  var active = false.obs;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        // height: size.height * .7,
        child: Column(
          children: [
            Container(
              color: Colors.black,
              height: size.height * .27,
              width: size.width,
              child: IgnorePointer(
                ignoring: !controller.checkPrevousCompleted(),
                child: Stack(children: [
                  VideoDisplay(),
                  controller.isPreviousCompleted == false
                      ? Center(
                          child: ClipRect(
                            child: BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: size.width * .9,
                                height: size.height * .25,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade200.withOpacity(0.5)),
                                child: Center(
                                  child: Text(
                                      'Please Complete Previous Lectures',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                ]),
              ),
            ),
            TabBar(
              controller: controller.tabController,
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal: 25),
              tabs: [
                Tab(
                  icon: Icon(Icons.search),
                ),
                Tab(
                  text: "Course Content",
                ),
                Tab(
                  text: "Overview",
                ),
                Tab(
                  text: "Notes",
                ),
              ],
            ),
            Expanded(
                child:
                    TabBarView(controller: controller.tabController, children: [
              searchInCourses(),
              CourseContent(controller: controller),
              CourseOverview(),
              Container(),
            ]))
          ],
        ),
      ),
    );
  }
}

class CourseOverview extends StatelessWidget {
  const CourseOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      padding: EdgeInsets.all(15),
      child: Obx(
        () => ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About This Course",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              "Comprehensive Medical Course: Gain in-depth knowledge and practical skills for a successful career in healthcare through engaging lectures, hands-on practice, and interactive simulations.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Divider(),
            Text(
              "Certificates",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              "Get Health Ledger Course Completion Digital Certificate",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Divider(),
            Text(
              "Course Overview",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              courseoverviewTemperoryDiscription,
              maxLines: isReadMore.value ? null : 9,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      isReadMore.value = !isReadMore.value;
                    },
                    child: Text(isReadMore.value ? "Read Less" : "Read More")),
              ],
            ),
            Divider(),
            Text(
              "Instructor",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    maxRadius: size.height * .03,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      "Dr Siddhant Vedpathak",
                      style: Theme.of(context).textTheme.titleMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              courseInstructorTemperoryAboutMe,
              maxLines: aboutmeisReadMore.value ? null : 5,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                    onTap: () {
                      aboutmeisReadMore.value = !aboutmeisReadMore.value;
                    },
                    child: Text(
                        aboutmeisReadMore.value ? "Read Less" : "Read More")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

var isReadMore = false.obs;
var aboutmeisReadMore = false.obs;

class searchInCourses extends StatelessWidget {
  const searchInCourses({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  hintText: "Search in Course Content",
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  border: OutlineInputBorder()),
            ),
          ),
          Spacer(),
          Text("Search For lectures or Notes",
              style: Theme.of(context).textTheme.labelLarge),
          Spacer()
        ],
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  const CourseContent({
    super.key,
    required this.controller,
  });
  final controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: controller.courseIncludings.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ExpansionTile(
            title: Text(
              controller.courseIncludings[index]["contentTitle"].toString(),
              style: Theme.of(context).textTheme.labelLarge,
            ),
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  controller.courseIncludings[index]["description"].toString(),
                  maxLines: 5,
                  style: Theme.of(context).textTheme.bodyMedium,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.justify,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

var courseInstructorTemperoryAboutMe =
    '''Dr. Siddhant Vedpathak is a highly skilled and compassionate doctor, dedicated to providing exceptional medical education. With a wealth of experience in clinical practice, they bring a unique perspective to their instruction, fostering a dynamic and interactive learning environment. Their passion for teaching and commitment to nurturing future healthcare professionals make them a valuable mentor in the field of medicine.''';

var courseoverviewTemperoryDiscription = '''Course Overview:
This course offers a comprehensive exploration of key medical concepts, principles, and practices. Throughout the program, you will delve into various disciplines of medicine, including anatomy, physiology, pharmacology, pathology, diagnostics, and patient care. By the end of the course, you will have gained a broad understanding of the human body and the essential skills necessary for a successful medical career.

Key Features:

Engaging Lectures: Interactive and engaging lectures delivered by experienced medical professionals and educators. These lectures provide a solid theoretical foundation for understanding medical concepts.

Hands-on Practical Sessions: Practical sessions that allow you to apply your knowledge in real-world scenarios. Through hands-on activities, you will develop clinical skills and enhance your ability to diagnose and treat medical conditions.

Virtual Patient Simulations: Immersive virtual patient simulations that provide a realistic experience of diagnosing and managing medical cases. These simulations help you develop critical thinking and decision-making skills in a safe and controlled environment.

Case Studies and Problem-Based Learning: Case studies and problem-based learning exercises that challenge you to apply your knowledge to solve complex medical scenarios. These activities promote critical thinking, teamwork, and clinical reasoning.

Interactive Quizzes and Assessments: Regular interactive quizzes and assessments to gauge your understanding and track your progress throughout the course. These quizzes help reinforce learning and identify areas that require further attention.

Expert Guest Speakers: Invited guest speakers, including renowned physicians, researchers, and healthcare professionals, who share their expertise and insights on specialized medical topics, advancements, and career opportunities.

Networking Opportunities: Collaboration and networking opportunities with fellow learners through discussion forums, group projects, and online communities. This fosters a supportive learning environment and encourages the exchange of ideas and experiences.

Continuous Support: Dedicated course instructors and support staff available to answer questions, provide guidance, and offer assistance throughout the duration of the course. Additional resources, references, and study materials are provided to supplement learning.

By enrolling in the Comprehensive Medical Course, you are taking a significant step towards acquiring the knowledge and skills necessary to embark on a fulfilling career in medicine. Join us on this transformative journey as we explore the fascinating world of medicine and prepare you for a successful future in the healthcare field.

Note: The actual content and structure of the medical course may vary based on the specific curriculum and learning objectives established by the course provider.''';
