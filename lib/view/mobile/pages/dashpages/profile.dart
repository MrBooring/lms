import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/dash_controller.dart';
import 'package:lms/util/utility.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    DashController dashController = Get.find<DashController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: size.height * .35,
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: size.height * .25,
                          child: Image.asset(
                            "lib/assets/icons/account.png",
                          ),
                        ),
                        Text(
                          "Siddhant Vedpathak",
                          style: TextStyle(
                            fontSize: size.height * .03,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: size.height * .07,
                          width: size.width * .7,
                          child: Center(
                            child: Wrap(
                              spacing: size.width * .015,
                              children: dashController.profilebadges.value,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
