import 'package:flutter/material.dart';
import 'package:lms/util/utility.dart';
import 'package:lms/view/mobile/widgets/courselist_card.dart';
import 'package:lms/view/mobile/pages/sidemenu/side_menu.dart';

class Featured extends StatefulWidget {
  const Featured({super.key});

  @override
  State<Featured> createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var textsize = MediaQuery.of(context).textScaleFactor;
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: Colors.transparent,

        foregroundColor: Colors.black,
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
        title: Text(
          "Learn about your Health",
          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                fontSize: textsize * 15,
              ),
          // style: TextStyle(
          //   fontSize: size.height * .028,
          //   letterSpacing: 1,
          //   fontWeight: FontWeight.w800,
          // ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: size.height * .28, crossAxisCount: 2),
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CourseListCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
