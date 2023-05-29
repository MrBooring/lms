import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/util/utility.dart';
import 'package:intl/intl.dart';

class Enrolled extends StatefulWidget {
  const Enrolled({super.key});

  @override
  State<Enrolled> createState() => _EnrolledState();
}

class _EnrolledState extends State<Enrolled> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade100, // appBar: AppBar(
      //   title: Text(
      //     "Enrolled",
      //     style: ThemeData().textTheme.headlineLarge,
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              // height: size.height * .27,
              // width: size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        DateFormat('dd MMMM yy').format(
                          DateTime.now(),
                        ),
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * .02),
                      ),
                    ],
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.teal,
                          maxRadius: size.height * .03,
                          child: Image.asset(
                            "lib/assets/userimages/male.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Container(
                          width: size.width * .7,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "Hi Siddhant",
                              style: TextStyle(
                                fontSize: size.height * .035,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 4,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: size.width * .65,
                          child: Text(
                            "Heres a list of cources you've Enrolled in",
                            style: TextStyle(
                              fontSize: size.height * .02,
                              fontWeight: FontWeight.bold,
                              // color: Colors.blue.shade900,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                // width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(50, 40),
                      topRight: Radius.elliptical(50, 40),
                    )),
                padding: EdgeInsets.only(
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Continue : ",
                      style: TextStyle(
                        fontSize: size.height * .025,
                        fontWeight: FontWeight.bold,
                        // color: Colors.blue.shade900,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            spreadRadius: -10,
                            blurRadius: 10,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: ListTile(
                        tileColor: Colors.transparent,
                        dense: true,
                        isThreeLine: true,
                        leading: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_arrow,
                            size: size.height * .035,
                          ),
                        ),
                        title: Text(
                          "First Aid Course",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * .025),
                        ),
                        subtitle: Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.stop,
                                  size: size.height * .02,
                                ),
                                SizedBox(
                                  width: size.width * .03,
                                ),
                                Text(
                                  "Hand Positions for a CPR",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: size.height * .005,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  maxRadius: size.height * .01,
                                  backgroundColor: Colors.transparent,
                                  child: FlutterLogo(),
                                ),
                                SizedBox(
                                  width: size.width * .03,
                                ),
                                Text(
                                  "Dr. Dikshit Deshpande",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "Your Courses : ",
                        style: TextStyle(
                          fontSize: size.height * .025,
                          fontWeight: FontWeight.bold,
                          // color: Colors.blue.shade900,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          itemCount: 5,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Get.toNamed("/watchcourse");
                              },
                              child: Container(
                                color: Color.fromARGB(255, 240, 240, 240),
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        color: Colors.amber.shade100,
                                        width: size.width,
                                        child: Image.asset(
                                          "lib/assets/tempbanner/b${index + 1}.jpg",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "First Aid Masterclass",
                                              style: ThemeData()
                                                  .textTheme
                                                  .labelLarge!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: LinearProgressIndicator(
                                              value: .6,
                                              color: Colors.orange,
                                              backgroundColor:
                                                  Colors.amber.shade300,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
