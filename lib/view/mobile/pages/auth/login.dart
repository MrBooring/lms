import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:lms/util/utility.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var tempbool = 0.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: SizedBox(
                    width: size.width * .7,
                    height: size.height * .1,
                    child: Image.asset("lib/assets/logo/logo.png"),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .02),
                  child: Text(
                    "Mobile Number",
                    style: TextStyle(
                      fontSize: size.height * .02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .065,
                  // width: size.width * .8,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Mobile Number",
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
                  height: size.height * .02,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size.width * .02),
                  child: Text(
                    "OTP",
                    style: TextStyle(
                      fontSize: size.height * .02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .065,
                  // width: size.width * .8,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "OTP",
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
                  height: size.height * .02,
                ),
                Center(
                  child: ObxValue(
                      (isOtpSent) => ElevatedButton(
                            onPressed: () {
                              isOtpSent.value = !isOtpSent.value;
                            },
                            child:
                                Text(isOtpSent.value == true ? "OTP" : "Login"),
                          ),
                      false.obs),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
