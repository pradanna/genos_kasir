import 'package:genos_kasir/page/base/base.dart';
import 'package:genos_kasir/page/homePage.dart';
import 'package:genos_kasir/page/welcomePage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class Croute {


  static var  route  = [
    GetPage(name: '/', page: () => WelcomePage()),
    GetPage(name: '/base', page: () => Base()),
  ];

}
