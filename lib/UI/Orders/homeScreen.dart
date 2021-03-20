import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trolly_store/UI/Orders/homescreencontroller.dart';
import 'package:get/get.dart';
import 'package:trolly_store/UI/Orders/schedule.dart';

import '../../constWidgets.dart';
import 'ASapTabBar.dart';

class HomeScreen extends StatelessWidget {
  ConstantWidget constantWidget = ConstantWidget();


  final List<Widget> bottomTabBarView = [
    ASAP(),
    Schedule(),
    ASAP(),
    ASAP(),
  ];
  final homeScreenController = Get.put(HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:

      Obx(()=>
         BottomNavigationBar(
          fixedColor: Colors.redAccent,
          backgroundColor:constantWidget.blackColor ,
          onTap: homeScreenController.onItemTap,
          currentIndex: homeScreenController.selectedIndex.value,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.view_list_outlined),
            label: 'Orders'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.fastfood_rounded),
                label: 'Deliveries'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.list),
                label: 'Deliveries'
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person),
                label: 'Deliveries'
            ),

          ],
        ),
      ),
      body: Obx(()=> bottomTabBarView.elementAt(homeScreenController.selectedIndex.value )),
    );
  }
}
