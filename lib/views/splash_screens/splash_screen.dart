import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/auth_screens/login_screen.dart';
import 'package:ecommerce_app/wiget_common/appLogo_witget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashSceens extends StatefulWidget {
  const SplashSceens({super.key});

  @override
  State<SplashSceens> createState() => _SplashSceensState();
}

class _SplashSceensState extends State<SplashSceens> {
  changeScreen() async {
    await Future.delayed(Duration(seconds: 3), () {
      // Navigator.pushReplacementNamed(context, loginScreen.route);
      Get.to(() => loginScreen());
    });
  }

  void initState() {
    super.initState();
    changeScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Container(
        width: double.infinity,
        child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg, width: 250, height: 300),
              ),
              SizedBox(
                height: 10,
              ),
              appLogoWitget(),
              SizedBox(
                height: 10,
              ),
              Text(
                appname,
                style: TextStyle(
                    fontFamily: bold, color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                appversion,
                style: TextStyle(fontFamily: bold, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              Text(
                credits,
                style: TextStyle(fontFamily: semibold, color: Colors.white),
              ),
              SizedBox(
                height: 20,
              )
            ]),
      ),
      // 50.heightBox,
      // appLogoWitget(),
      // 10.heightBox,
      // appname.text.white.bold.size(20).make(),
      // 5.heightBox,
      // appversion.text.white.bold.make(),
      // Spacer(),
      // credits.text.white.semiBold.make(),
      // 20.heightBox,
    );
  }
}
