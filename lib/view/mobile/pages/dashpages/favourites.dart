import 'package:flutter/material.dart';
import 'package:lms/util/utility.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Wishlist"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(
                "lib/assets/icons/favourites.png",
                scale: 1.5,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Save Something to see it Later",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: size.height * .025,
                ),
              ),
            ),
            Text(
              "Your Wishlist goes here",
              style: TextStyle(
                fontSize: size.height * .02,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
