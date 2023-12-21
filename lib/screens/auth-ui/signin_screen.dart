import 'package:dada_bhagwan/screens/auth-ui/sign_up_screen.dart';
import 'package:dada_bhagwan/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, bool isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppConstant.appMainColor,
            title: const Text(
              "Sign In ",
              style: TextStyle(
                  color: AppConstant.appTextcolor, fontWeight: FontWeight.bold),
            ),
          ),
          body: Container(
            child: Column(
              children: [
                isKeyboardVisible
                    ? const SizedBox.shrink()
                    : Column(
                        children: [
                          Lottie.asset("assets/images/splash-screen.json")
                        ],
                      ),
                SizedBox(
                  height: Get.height / 20,
                ),

                ///--------------------Email-------------------------//
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: const Icon(Icons.email),
                      contentPadding:
                          const EdgeInsets.only(top: 2.0, left: 8.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: Get.height / 70,
                ),
//---------------------------------Password----------------------------------------
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: Get.width,
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecondaryColor,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: const Icon(Icons.password_rounded),
                      suffix: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.visibility_off),
                      ),
                      contentPadding:
                          const EdgeInsets.only(top: 2.0, left: 8.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ),
                //--------------------- Forget Password------------
                Container(
                  alignment: Alignment.centerRight,
                  margin: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(
                        color: AppConstant.appSecondaryColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: Get.height / 50,
                ),
                Center(
                  child: Material(
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppConstant.appSecondaryColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      width: Get.width / 2,
                      height: Get.height / 18,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: AppConstant.appTextcolor),
                        ),
                      ),
                    ),
                  ),
                ),
                //--------------------- Dont Have A Account?----------------

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Dont Have an Account?",
                      style: TextStyle(
                          color: AppConstant.appSecondaryColor,
                          fontWeight: FontWeight.normal),
                    ),
                    GestureDetector(
                      onTap: () => Get.offAll(() => const SignUpScreen()),
                      child: const Text(
                        "Sing Up",
                        style: TextStyle(
                            color: AppConstant.appSecondaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
