import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Color(0xFFD1EAE1),
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset("assets/images/Delivery.png"),
                ),
                Center(
                  child: Container(
                    width: Get.width * 0.5,
                    height: Get.height * 0.5,
                    child: Image.asset("assets/images/logo_splash.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
