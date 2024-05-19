import 'package:ecommerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

// Widget appLogoWitget() {
//   return Image.asset(icAppLogo)
//       .box
//       .white
//       .size(77, 77)
//       .padding(EdgeInsets.all(5))
//       .rounded
//       .make();
// }

Widget appLogoWitget() {
  return Container(
      height: 77,
      width: 77,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(5),
      child: Image.asset(
        icAppLogo,
      ));
}
