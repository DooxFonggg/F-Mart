import 'package:ecommerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget customTextFeild(String name, String? Hint) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name,
          style: TextStyle(fontFamily: semibold, color: redColor, fontSize: 16),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: Hint,
            // isDense: true,
            hintStyle: TextStyle(
              fontFamily: semibold,
              color: fontGrey,
            ),
            border: InputBorder.none,
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: redColor)),
            filled: true,
            fillColor: textfieldGrey,
          ),
        ),
      ],
    ),
  );
}
