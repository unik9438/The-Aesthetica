import 'package:dada_bhagwan/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstant.appMainColor,
        title: const Text(
          "Welcome to my App",
          style: TextStyle(color: AppConstant.appTextcolor),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 300,
              child: Lottie.asset(
                "assets/images/splash-screen.json",
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: const Text(
                "Happy Shopping",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 12,
            ),
            Center(
              child: Material(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: Image.asset("assets/images/google.png", height: 30),
                    label: const Text(
                      "Sign in With Google",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appTextcolor),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            Center(
              child: Material(
                child: Container(
                  decoration: BoxDecoration(
                    color: AppConstant.appSecondaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: Get.width / 1.2,
                  height: Get.height / 12,
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.email_outlined, size: 30),
                    label: const Text(
                      "Sign in With Emal",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppConstant.appTextcolor),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
