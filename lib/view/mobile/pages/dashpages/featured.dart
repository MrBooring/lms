import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lms/util/utility.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        toolbarHeight: size.height * .1,
        title: Text(
          "Start Your Medical Carrier with our Courses",
          maxLines: 2,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        actions: [
          SizedBox(
            height: size.height * .06,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  backgroundColor: Colors.transparent,
                  elevation: 0),
              onPressed: () {},
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
                size: size.height * .035,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
                  child: Container(
                    width: size.width,
                    height: size.height * .055,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          spreadRadius: -10,
                          blurRadius: 10,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Material(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 20,
                              )),
                        ),
                        Expanded(
                          child: TextFormField(
                            maxLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Color(0xfff2f3f7),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.close,
                            size: size.height * .02,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Recommended For You : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * .025,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .33,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Get.toNamed("/courseinfo");
                          },
                          child: Container(
                            width: size.width * .5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width * .5,
                                  height: size.height * .17,
                                  color: Colors.amber.shade100,
                                  child: FlutterLogo(),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "The Complete Guide: First Aid",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.height * .02,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "Dr Dinesh dayanand",
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey.shade700,
                                      fontSize: size.height * .02,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Row(
                                    children: [
                                      Text(
                                        "4.3",
                                        style: TextStyle(
                                          color: Colors.orange.shade800,
                                        ),
                                      ),
                                      IgnorePointer(
                                        child: RatingBar.builder(
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: size.height * .02,
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Text(
                                    "₹245",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Our Top Pick For You : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * .025,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: size.width,
                          height: size.height * .2,
                          color: Colors.amber.shade100,
                          child: FlutterLogo(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            "The Complete Guide: First Aid",
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: size.height * .02,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            "Dr Dinesh dayanand",
                            maxLines: 2,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.grey.shade700,
                              fontSize: size.height * .02,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Row(
                            children: [
                              Text(
                                "4.3",
                                style: TextStyle(
                                  color: Colors.orange.shade800,
                                ),
                              ),
                              IgnorePointer(
                                child: RatingBar.builder(
                                  initialRating: 3,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: size.height * .02,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {},
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Text(
                            "₹245",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Free Webinars : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: size.height * .025,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .33,
                  child: ListView.builder(
                    itemCount: 5,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: size.width * .5,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * .5,
                                height: size.height * .17,
                                color: Colors.amber.shade100,
                                child: FlutterLogo(),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  "The Complete Guide: First Aid",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: size.height * .02,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Text(
                                  "Dr Dinesh dayanand",
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade700,
                                    fontSize: size.height * .02,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 3),
                                child: Row(
                                  children: [
                                    Text(
                                      "4.3",
                                      style: TextStyle(
                                        color: Colors.orange.shade800,
                                      ),
                                    ),
                                    IgnorePointer(
                                      child: RatingBar.builder(
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        itemSize: size.height * .02,
                                        itemBuilder: (context, _) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {},
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
