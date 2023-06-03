import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:lms/util/utility.dart';

class CourseListCard extends StatefulWidget {
  const CourseListCard({super.key});

  @override
  State<CourseListCard> createState() => _CourseListCardState();
}

class _CourseListCardState extends State<CourseListCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/courseinfo");
      },
      child: Card(
        child: Container(
          width: size.width * .5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  width: size.width * .5,
                  height: size.height * .14,
                  // color: Colors.orange.shade100,
                  child: Image.asset(
                    "lib/assets/tempbanner/b1.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Text("The Complete Guide: First Aid ddv",
                          maxLines: 2,
                          style: Theme.of(context).textTheme.labelLarge
                          // style: TextStyle(
                          //   fontWeight: FontWeight.bold,
                          //   fontSize: size.height * .018,
                          // ),
                          ),
                    ),
                    Text("Dr Dinesh dayanand",
                        maxLines: 2,
                        style: Theme.of(context).textTheme.labelSmall),
                    Row(
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
                            itemSize: size.height * .018,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3),
                      child: Text("₹245",
                          style: Theme.of(context).textTheme.labelLarge),
                    )
                  ],
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
