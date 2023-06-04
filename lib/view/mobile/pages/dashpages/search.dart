import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lms/util/utility.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 3),
            child: Container(
              width: size.width - 10,
              height: size.height * .065,
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
                          color: Colors.black,
                          size: 20,
                        )),
                  ),
                  Expanded(
                    child: Container(
                      child: TextFormField(
                        maxLines: 1,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 5,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    margin: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 228, 229, 234),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: size.height * .02,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: SizedBox(
            height: size.height,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    width: size.width,
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Featured Topics",
                              style: TextStyle(
                                fontSize: size.height * .03,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              ListTile(
                                dense: true,
                                title: Text(
                                  "How i saved a life",
                                  style: TextStyle(
                                    fontSize: size.height * .02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("Dr Siddhant Vedpathak"),
                                leading: SizedBox(
                                  height: size.height * .04,
                                  width: size.width * .15,
                                  child: Image.asset(
                                    "lib/assets/tempbanner/b4.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  "How i saved a life",
                                  style: TextStyle(
                                    fontSize: size.height * .02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("Dr Siddhant Vedpathak"),
                                leading: SizedBox(
                                  height: size.height * .04,
                                  width: size.width * .15,
                                  child: Image.asset(
                                    "lib/assets/tempbanner/b4.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              ListTile(
                                dense: true,
                                title: Text(
                                  "How i saved a life",
                                  style: TextStyle(
                                    fontSize: size.height * .02,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text("Dr Siddhant Vedpathak"),
                                leading: SizedBox(
                                  height: size.height * .04,
                                  width: size.width * .15,
                                  child: Image.asset(
                                    "lib/assets/tempbanner/b4.jpg",
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Container(
                                width: size.width,
                                height: size.height * .17,
                                color: Colors.amber.shade100,
                                child: Image.asset(
                                  "lib/assets/tempbanner/b4.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: size.width * .85,
                              child: Text(
                                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum ",
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.height * .02,
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: SizedBox(
                                width: size.width * .85,
                                child: Text(
                                  " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                  textAlign: TextAlign.justify,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    // fontWeight: FontWeight.bold,
                                    fontSize: size.height * .02,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
