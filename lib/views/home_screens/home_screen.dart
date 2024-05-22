import 'package:ecommerce_app/consts/colors.dart';
import 'package:ecommerce_app/consts/consts.dart';
import 'package:ecommerce_app/controller/bloc/home_controller_bloc.dart';
import 'package:ecommerce_app/controller/bloc_home/home_controller_bloc.dart';
import 'package:ecommerce_app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:getx_test/utils/image_test_utils.dart';

class homeScreen extends StatelessWidget {
  // const homeScreen({super.key});
  List<BottomNavigationBarItem> navbarItem = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Image.asset(
        icHome,
        width: 26,
      ),
      label: home,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        icCart,
        width: 26,
      ),
      label: cart,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        icCategories,
        width: 26,
      ),
      label: categories,
    ),
    BottomNavigationBarItem(
      icon: Image.asset(
        icProfile,
        width: 26,
      ),
      label: account,
    ),
  ];
  var homeItem = [
    Container(
      color: Colors.amber,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.green,
    ),
    Container(
      color: Colors.red,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeControllerBloc, HomeControllerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: (Text('fMart')),
            backgroundColor: redColor,
          ),
          body: Container(
            child: homeItem[state.tabIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.tabIndex,
            items: navbarItem,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: redColor,
            selectedLabelStyle:
                TextStyle(fontFamily: semibold, color: textfieldGrey),
            onTap: (index) {
              BlocProvider.of<HomeControllerBloc>(context)
                  .add(HomeChanged(tabIndex: index));
            },
          ),
        );
      },
    );
  }
}
