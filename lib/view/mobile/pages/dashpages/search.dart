import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/controllers/dash_controller.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/mobile/widgets/searchchips.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    int i = 0;
    DashController dashController = Get.find<DashController>();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Card(
                    child: ListTile(
                      leading: Icon(Icons.search),
                      title: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              i != 0
                  ? SizedBox()
                  : SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Featured Topics",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.height * .025,
                              ),
                            ),
                          ),
                          Obx(
                            () => Wrap(
                              runSpacing: 5.0,
                              spacing: 5.0,
                              children: dashController.searchchip.value,
                            ),
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
