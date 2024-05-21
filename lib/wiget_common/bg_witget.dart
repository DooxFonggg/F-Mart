import 'package:ecommerce_app/consts/consts.dart';
import 'package:flutter/material.dart';

Widget bgWitget(Widget? child) {
  return Container(
    decoration: const BoxDecoration(
      image: const DecorationImage(
          image: AssetImage(imgBackground), fit: BoxFit.fill),
    ),
    child: child,
  );
}
