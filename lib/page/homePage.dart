import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:genos_kasir/genosLib/component/textfield/textField.dart';
import 'package:genos_kasir/genosLib/genColor.dart';
import 'package:genos_kasir/genosLib/genText.dart';
import '../genosLib/component/page/genPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenPage(
        body: Container(
            color: GenColor.backGroundColor,
            child: Row(children: [
              Expanded(
                child: Container(
                    child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GenText(
                            "Pilih Kategori",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Container(
                            width: 400,
                            child: TextfieldRound(
                              prefixIcon: Icon(Icons.search),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
              ),
              Container(
                width: 400,
              )
            ])));
  }
}
