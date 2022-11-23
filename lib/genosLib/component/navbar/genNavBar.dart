import 'package:flutter/material.dart';

import '../../genColor.dart';
import '../../genText.dart';
import '../etc/JustHelper.dart';
import '../etc/genDimen.dart';
import '../etc/genRow.dart';
import '../etc/genShadow.dart';
import '../pill/genPill.dart';

class GenNavbar extends StatelessWidget {
  final int pendapatan;
  final Function()? iconTap;

  GenNavbar({
    this.pendapatan = 0,
    this.iconTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                InkWell(
                  onTap: iconTap,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 20,
                    width: 20,
                    child: const Icon(
                      Icons.menu,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                GenText(
                  "Hi, Admin",
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
              ],
            ),

            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GenText(
                      "Pendapatan Hari ini",
                      style: const TextStyle(fontSize: 10, color: Colors.black),
                    ),
                    GenText(
                      formatRupiahUseprefik(pendapatan),
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                    child: Center(
                        child: InkWell(
                            onTap: () {
                              Navigator.popAndPushNamed(context, "login");
                            },
                            child: const Icon(
                              Icons.account_circle,
                              color: Colors.black,
                              size: 40,
                            )))),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            // GenText(
            //   "QR Code",
            //   style: TextStyle(color: Colors.black87, fontSize: 35),
            // )
          ]),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
