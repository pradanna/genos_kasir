import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genos_kasir/page/base/base_controller.dart';
import 'package:get/get.dart';

import '../../genosLib/component/page/genPage.dart';
import '../../genosLib/genText.dart';

class Base extends GetView<BaseController> {
  @override
  Widget build(BuildContext context) {
    Get.put(BaseController());

    return GenPage(
        body: NavigationRail(
            destinations: <NavigationRailDestination>[
          NavigationRailDestination(
              icon: Icon(Icons.home),
              label: GenText("Home"),
              selectedIcon: Icon(Icons.home_filled)),
          NavigationRailDestination(
              icon: Icon(Icons.home),
              label: GenText("Home"),
              selectedIcon: Icon(Icons.home_filled))
        ],
            selectedIndex: controller.tabINdex,
            onDestinationSelected: controller.changeTabIndex,

        ));
  }
}
