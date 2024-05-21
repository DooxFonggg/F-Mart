import 'package:ecommerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget ourButton({String? name, primary, onPress, color}) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: primary!,
        padding: EdgeInsets.all(10),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: onPress,
      child: Text(
        name!,
        style: TextStyle(fontFamily: bold, color: color),
      ));
}
