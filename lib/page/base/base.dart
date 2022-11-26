import 'package:flutter/material.dart';
import 'package:genos_kasir/page/base/base_controller.dart';
import 'package:genos_kasir/page/homePage.dart';
import 'package:genos_kasir/page/secondPage.dart';
import 'package:get/get.dart';

import '../../genosLib/component/page/genPage.dart';
import '../../genosLib/genText.dart';

class Base extends StatelessWidget {
  BaseController controller = Get.put(BaseController());

  @override
  Widget build(BuildContext context) {
    return GenPage(
      body: GetBuilder<BaseController>(builder: (_) {
        return Row(
          children: [
            NavigationRail(
              elevation: 5,
              labelType: NavigationRailLabelType.selected,
              leading: Container(
                margin: EdgeInsets.only(top: 50, bottom: 30),
                child: Center(
                    child: Image.network(
                  "https://branditechture.agency/brand-logos/wp-content/uploads/wpdm-cache/Flutter-900x0.png",
                  width: 50,
                )),
              ),
              destinations: <NavigationRailDestination>[
                NavigationRailDestination(
                    icon: Icon(Icons.calculate_rounded),
                    label: GenText("Kasir"),
                    selectedIcon: Icon(Icons.calculate_outlined)),
                NavigationRailDestination(
                    icon: Icon(Icons.assignment),
                    label: GenText("Laporan"),
                    selectedIcon: Icon(Icons.assignment_outlined)),
                NavigationRailDestination(
                    icon: Icon(Icons.settings_applications_sharp),
                    label: GenText("Setting"),
                    selectedIcon: Icon(Icons.settings)),
              ],
              selectedIndex: controller.tabINdex,
              onDestinationSelected: controller.changeTabIndex,
            ),
            Expanded(child: _pages[controller.tabINdex])
          ],
        );
      }),
    );
  }

  final List<Widget> _pages = [HomePage(), SecondPage(), SecondPage()];
}
