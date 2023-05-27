import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController phnocontroller = TextEditingController();
  TextEditingController otpcontroller = TextEditingController();
  var phoneno = "".obs;
  var otp = "".obs;
  var errortext = "".obs;
  var isOtpSent = false.obs;
  var isnumvalid = false.obs;

  validation(value) {
    if (value.length == 10) {
      if (value == "0123456789") {
        errortext.value = "Please enter a valid number";
        isnumvalid.value = true;
      } else {
        phoneno.value = phnocontroller.value.text;
        sendOtp();
      }
    } else if (value.length < 10 && value.length > 6) {
      errortext.value = "Number must be 10 digits";
    }
    log(errortext.value);
  }

  void sendOtp() {
    isOtpSent.value = true;
  }
}
