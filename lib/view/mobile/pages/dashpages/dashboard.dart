import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:lms/controllers/dash_controller.dart';
import 'package:lms/view/mobile/pages/dashpages/enrolled.dart';
import 'package:lms/view/mobile/pages/dashpages/favourites.dart';
import 'package:lms/view/mobile/pages/dashpages/featured.dart';
import 'package:lms/view/mobile/pages/dashpages/search.dart';
import 'package:lms/view/responsive.dart';

// ignore: must_be_immutable
class Dashboard extends GetView<DashController> {
  DashController dashController = Get.put(DashController());

  Dashboard({super.key});

  dashUiControll() {
    return dashpages[controller.selectedItemIndex.value];
  }

  var dashpages = [
    Featured(),
    Search(),
    Enrolled(),
    Favourites(),
  ];
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      desktopBody: Scaffold(),
      mobileBody: Scaffold(
        body: Obx(() => dashUiControll()),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            child: GNav(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              // tabBackgroundColor: Colors.amber.shade50,
              // gap: 8,
              tabBorderRadius: 5,
              activeColor: Colors.black,
              rippleColor: Colors.grey.shade300,
              // backgroundColor: Color.fromARGB(255, 215, 235, 253),
              hoverColor: Colors.grey.shade100,

              selectedIndex: controller.selectedItemIndex.value,
              onTabChange: (value) {
                controller.selectedItemIndex.value = value;
              },
              tabs: const [
                GButton(
                  icon: Icons.star_border_outlined,
                  text: "Featured",
                ),
                GButton(
                  icon: Icons.article_outlined,
                  text: "Articles",
                ),
                GButton(
                  icon: Icons.play_arrow_outlined,
                  text: "Enrolled",
                ),
                GButton(
                  icon: Icons.favorite_outline,
                  text: "WishList",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
