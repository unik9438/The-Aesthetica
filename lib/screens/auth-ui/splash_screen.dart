import 'dart:async';

import 'package:dada_bhagwan/screens/auth-ui/welcome_screen.dart';
import 'package:dada_bhagwan/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
// import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Get.offAll(() => const WelcomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppConstant.appSecondaryColor,
      appBar: AppBar(
        backgroundColor: AppConstant.appSecondaryColor,
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 100,
                child: Lottie.asset(
                  "assets/images/splash-screen.json",
                ),
                //  child: Image.asset("assets/images/1.png"),
              ),
            ),
            Container(
              //width: size.width,
              width: Get.width,
              margin: const EdgeInsets.only(bottom: 20.0),
              alignment: Alignment.center,
              child: Text(
                AppConstant.appPoweredBy,
                style: const TextStyle(
                    color: AppConstant.appTextcolor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
