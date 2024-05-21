import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/views/auth_screens/signUp_screen.dart';
import 'package:ecommerce_app/wiget_common/appLogo_witget.dart';
import 'package:ecommerce_app/wiget_common/bg_witget.dart';
import 'package:ecommerce_app/wiget_common/custom_textFeild.dart';
import 'package:ecommerce_app/wiget_common/our_button.dart';
import 'package:flutter/material.dart';
import 'package:getx_test/utils/image_test_utils.dart';

class loginScreen extends StatelessWidget {
  static const String route = '/loginScreen';

  const loginScreen({Key? key}) : super(key: key);

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
              "Đăng nhập vào $appname",
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
                        customTextFeild(email, emailHint),
                        SizedBox(
                          height: 10,
                        ),
                        customTextFeild(password, passwordHint),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {}, child: Text(forgetPassword)),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            width: double.infinity,
                            child: ourButton(
                                name: login,
                                primary: redColor,
                                color: whiteColor,
                                onPress: () {})),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          newAccount,
                          style: TextStyle(fontFamily: bold, color: fontGrey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            width: double.infinity,
                            child: ourButton(
                                name: signUp,
                                color: redColor,
                                primary: lightGolden,
                                onPress: () {
                                  Get.to(() => signUpScreen());
                                })),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          loginWith,
                          style: TextStyle(fontFamily: bold, color: fontGrey),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                    backgroundColor: lightGrey,
                                    radius: 20,
                                    child: Image.asset(
                                      sosialIconList[index],
                                      width: 25,
                                    )),
                              ),
                            )),
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
