import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genos_kasir/genosLib/genText.dart';
import '../genosLib/component/page/genPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                    child: Image.network(
                  "https://www.waralabaku.com/logo/logo_franchise_peluang_usaha_pentol_monster.jpg",
                  width: double.infinity,
                )),
              ),

            ],
          ))
    ])));
  }

}
