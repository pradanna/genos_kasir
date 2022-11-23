import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../genColor.dart';
import '../../genText.dart';

class GenPill extends StatelessWidget {
  final String text;
  final Color pillcolor;
  final Color textColor;
  final double textSize;
  final EdgeInsets padding;
  final Function()? ontap;



  const GenPill(
      {Key? key,
        this.text = "",
        this.pillcolor = GenColor.primaryColor,
        this.textColor = Colors.white,
        this.textSize = 12,
        this.padding = const EdgeInsets.all(5),
        this.ontap
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap ?? (){},
      child: Container(decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: pillcolor
      ),
      padding: padding,
        child: GenText(text, style: TextStyle(color: textColor, fontSize: textSize),),
      ),
    );
  }
}



