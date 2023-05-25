import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/view/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade100.withOpacity(.5),
        ),
      ),
      initialRoute: "/",
      getPages: routes,
    );
  }
}
