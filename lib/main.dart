import 'package:antarlaundry/app/widget/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            title: "Antar Laundry",
            debugShowCheckedModeBanner: false,
            initialRoute: AppPages.INITIAL,
            getPages: AppPages.routes,
          );
        }
      },
    );
  }
}
