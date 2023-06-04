import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/view/mobile/widgets/searchchips.dart';

class DashController extends GetxController {
  var selectedItemIndex = 0.obs;
  var searchchip = <Widget>[].obs;
  var profilebadges = <Widget>[].obs;

  //temp variables
  List chiplabel = [
    "Heart Conditions",
    "Stomach",
    "Brain nerves",
    "Joints",
    "Painkillers",
  ];

  List badges = [
    "lib/assets/badges/b1.png",
    "lib/assets/badges/b1.png",
    "lib/assets/badges/b1.png",
  ];

  @override
  void onInit() {
    super.onInit();
    searchchip.value = SearchChips().buildchips(chiplabel);
  }
}
