import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../genColor.dart';
import '../../genText.dart';
import '../button/genButton.dart';
import 'commonPadding.dart';
import 'genDimen.dart';

class RowSpaceBetween extends StatelessWidget {
  final Widget? chilidLeft;
  final Widget? childRight;
  final double? paddingHorz;
  final double? paddingVert;
  RowSpaceBetween({this.chilidLeft, this.childRight, this.paddingHorz, this.paddingVert});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: paddingHorz ?? 20, vertical: paddingVert ?? 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          chilidLeft ?? Container(),
          childRight ?? Container(),
        ],
      ),
    );
  }
}

class RowDetails extends StatelessWidget {

  final IconData? leftIcon;
  final IconData? rightIcon;
  final String? text;
  final String? titleText;
  final Function()? ontap;
  final EdgeInsets? padding;
  final TextStyle? textStyle;
  final bool noBorder;
  final double? heightPadding;
  final Color? rightIconColor;
  final String? rightIconText;

  RowDetails({this.leftIcon, this.rightIconText, this.rightIconColor, this.rightIcon, this.text, this.ontap, this.titleText, this.heightPadding,this.padding, this.textStyle, this.noBorder = false});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonPadding(
      padding: padding ?? EdgeInsets.only(
          right: GenDimen.sidePadding,
          left: GenDimen.sidePadding),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: heightPadding ?? 10),
        decoration:  !noBorder ?  BoxDecoration(
            border: Border(bottom: BorderSide(width:1, color: Colors.black12))
        ) : BoxDecoration(

        ) ,
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  leftIcon == null ? Container() : Icon(leftIcon ?? Icons.calendar_month),
                  leftIcon == null ? Container() : SizedBox(width: GenDimen.spaceDetail,),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GenText(titleText ?? "", style: TextStyle(fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        GenText(text ?? "-", style: textStyle ?? TextStyle(fontSize: 15, color: Colors.black54),),
                      ],
                    ),
                  )
                ],
              ),
            ), rightIcon == null ? Container() : rightIconText != null ? CircleButton(onTap: ontap ?? (){}, iconData: rightIcon, bgColor: rightIconColor ?? GenColor.primaryColor, text: rightIconText, ) :  CircleButton(onTap: ontap ?? (){}, iconData: rightIcon, bgColor: rightIconColor ?? GenColor.primaryColor, )
          ],
        ),
      ),
    );
  }}
