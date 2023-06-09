import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lms/view/routes/routes.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: const MyApp()));
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
      supportedLocales: [
        Locale('en', 'US'),
      ],
      theme: ThemeData.light().copyWith(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        progressIndicatorTheme: Theme.of(context)
            .progressIndicatorTheme
            .copyWith(color: Color.fromARGB(255, 235, 142, 3)),
        cardTheme: Theme.of(context).cardTheme.copyWith(
            // color: Color.fromARGB(255, 255, 254, 253),
            color: Color.fromARGB(255, 255, 255, 255)),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange.shade100,
          // backgroundColor: Color(0xffffba89),
        ),
        // textTheme: TextTheme().copyWith(
        //   labelMedium: TextStyle(),
        // ),
      ),
      initialRoute: "/",
      getPages: routes,
    );
  }
}
