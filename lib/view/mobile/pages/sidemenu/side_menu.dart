import 'package:flutter/material.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * .55,
      child: Drawer(
        child: Container(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  'Siddhant Vedpathak',
                  // style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),

                  style: Theme.of(context).textTheme.labelMedium,
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.shade100,
                ),
              ),
              ListTile(
                leading: Icon(Icons.bookmarks_outlined),
                title: Text('Bookmarks'),
                onTap: () => {},
              ),
              ListTile(
                leading: Icon(Icons.update),
                title: Text('Progress'),
                onTap: () => {},
              ),
              SizedBox(
                height: size.height * .33,
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Contact Us"),
                  style:
                      ElevatedButton.styleFrom(shape: BeveledRectangleBorder()),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("T&C"),
                  SizedBox(
                    height: size.height * .035,
                    child: VerticalDivider(
                      width: size.width * .02,
                      thickness: 1.5,
                    ),
                  ),
                  Text("Privacy Policy")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
