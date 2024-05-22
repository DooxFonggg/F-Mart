import 'package:ecommerce_app/controller/bloc/home_controller_bloc.dart';
import 'package:ecommerce_app/controller/bloc_home/home_controller_bloc.dart';
import 'package:ecommerce_app/views/splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'consts/consts.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //sử dụng getx
    return BlocProvider(
      create: (context) => HomeControllerBloc(),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: appname,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.transparent,
          ),
          fontFamily: regular,
        ),
        home: SplashSceens(),
      ),
    );
  }
}
