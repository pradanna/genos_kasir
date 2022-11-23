import 'package:flutter/material.dart';
import 'package:genos_kasir/routes.dart';
import 'package:get/get.dart';

void main() async {
  // COLOR PALLETE
  // https://colorhunt.co/palette/ff8787f8c4b4e5ebb2bce29e

  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: Croute.route,
    // home: MyHomePage(),
  ));
}
