import 'package:get/get.dart';

class BaseController extends GetxController{
  var tabINdex = 0;

  void changeTabIndex(int Index){
    tabINdex = Index;
    update();
  }
}