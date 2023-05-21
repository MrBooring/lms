import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/util/utility.dart';

class Badges {
  var achivbadges = <Widget>[].obs;
  buildbadges(img) {
    for (int i = 0; i < img.length; i++) {
      achivbadges.value.add(
        CircleAvatar(
          backgroundColor: Color(0xFFFFD700),
          maxRadius: size.height * .02,
          child: Image.asset(
            img[i],
            fit: BoxFit.fill,
            height: size.height * .03,
          ),
        ),
      );
    }
    return achivbadges;
  }
}
