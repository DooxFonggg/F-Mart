import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/auth_screens/login_screen.dart';
import 'package:ecommerce_app/wiget_common/appLogo_witget.dart';
import 'package:ecommerce_app/wiget_common/bg_witget.dart';
import 'package:ecommerce_app/wiget_common/custom_textFeild.dart';
import 'package:ecommerce_app/wiget_common/our_button.dart';
import 'package:flutter/material.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  bool isValue = false;
  @override
  Widget build(BuildContext context) {
    return bgWitget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: context.screenHeight * 0.1,
            ),
            appLogoWitget(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Đăng ký $appname",
              style: TextStyle(
                  fontFamily: bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(left: 15, right: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          ), //
                        ]),
                    child: Column(
                      children: [
                        customTextFeild(name, nameHint),
                        SizedBox(
                          height: 10,
                        ),
                        customTextFeild(
                            EmailInputElement, EmailInputElementHint),
                        SizedBox(
                          height: 10,
                        ),
                        customTextFeild(password, passwordHint),
                        SizedBox(
                          height: 10,
                        ),
                        customTextFeild(confirmPassword, passwordHint),
                        SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                forgetPassword,
                                style: TextStyle(fontFamily: bold),
                              )),
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: Colors.white,
                                fillColor: MaterialStateProperty.all(
                                    isValue == true ? redColor : Colors.white),
                                value: isValue,
                                onChanged: (newValue) {
                                  setState(() {
                                    isValue = newValue!;
                                  });
                                }),
                            Expanded(
                              child: RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                    text: "Tôi đồng ý với ",
                                    style: TextStyle(
                                      color: fontGrey,
                                      fontFamily: bold,
                                    )),
                                TextSpan(
                                    text: termsAndConditions,
                                    style: TextStyle(
                                      color: redColor,
                                      fontFamily: bold,
                                    )),
                                TextSpan(
                                    text: " & ",
                                    style: TextStyle(
                                      color: fontGrey,
                                      fontFamily: bold,
                                    )),
                                TextSpan(
                                    text: privacyPolicy,
                                    style: TextStyle(
                                      color: redColor,
                                      fontFamily: bold,
                                    )),
                              ])),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            width: double.infinity,
                            child: ourButton(
                                name: signUp,
                                color: whiteColor,
                                primary:
                                    isValue == true ? redColor : lightGolden,
                                onPress: () {})),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              alreadyHaveAccount,
                              style:
                                  TextStyle(fontFamily: bold, color: fontGrey),
                            ),
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: Text(
                                  login,
                                  style: TextStyle(
                                      fontFamily: bold, color: redColor),
                                ))
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
