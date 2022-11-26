import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genos_kasir/genosLib/genText.dart';
import '../genosLib/component/page/genPage.dart';

class SecondPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GenPage(
        body: Container(
            child: Row(children: [
      Container(
          width: 100,
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                child: Center(
                    child: GenText("hehe")),
              ),

            ],
          ))
    ])));
  }

}
