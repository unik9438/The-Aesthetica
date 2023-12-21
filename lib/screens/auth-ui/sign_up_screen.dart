import 'package:dada_bhagwan/screens/auth-ui/signin_screen.dart';
import 'package:dada_bhagwan/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(
      builder: (context, bool isKeyboardVisible) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: AppConstant.appMainColor,
            title: const Text(
              "Sign Up ",
              style: TextStyle(
                  color: AppConstant.appTextcolor, fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              child: Column(
                children: [
                  // isKeyboardVisible
                  //     ? const SizedBox.shrink()
                  //     : Column(
                  //         children: [
                  //           Lottie.asset("assets/images/splash-screen.json")
                  //         ],
                  //       ),
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  Container(
                      alignment: Alignment.center,
                      child: const Text("Welcome to the App")),
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
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        hintText: "User Name",
                        prefixIcon: const Icon(Icons.person_2_rounded),
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
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondaryColor,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Phone Number",
                        prefixIcon: const Icon(Icons.phone),
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
                      keyboardType: TextInputType.visiblePassword,
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

                  //---------------------------------Password----------------------------------------
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: Get.width,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      cursorColor: AppConstant.appSecondaryColor,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        hintText: "Retype Password",
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

                  SizedBox(
                    height: Get.height / 20,
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
                  SizedBox(
                    height: Get.height / 20,
                  ),
                  //--------------------- Dont Have A Account?----------------

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have an Account?",
                        style: TextStyle(
                            color: AppConstant.appSecondaryColor,
                            fontWeight: FontWeight.normal),
                      ),
                      GestureDetector(
                        onTap: () => Get.offAll(() => const SignInScreen()),
                        child: const Text(
                          " Sing In",
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
          ),
        );
      },
    );
  }
}
