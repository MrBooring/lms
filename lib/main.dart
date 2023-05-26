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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        progressIndicatorTheme: Theme.of(context)
            .progressIndicatorTheme
            .copyWith(color: Colors.orange),
        cardTheme: Theme.of(context).cardTheme.copyWith(
              color: Color.fromARGB(255, 255, 254, 253),
            ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange.shade100,
        ),
      ),
      initialRoute: "/",
      getPages: routes,
    );
  }
}
