import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../genColor.dart';
import '../../genText.dart';
import '../etc/genDimen.dart';

class GenButton extends StatelessWidget {
  final double radius;
  final String text;
  final IconData? iconLeft;
  final IconData? iconRight;
  final Color color;
  final Color textColor;
  final double? textSize;
  final EdgeInsets? padding;
  final Function()? ontap;
  final bool readyToHit;
  final bool useShadow;
  final String? imageleft;

  const GenButton(
      {Key? key,
      this.radius = 50,
      required this.text,
      this.iconLeft,
      this.iconRight,
      this.color = GenColor.primaryColor,
      this.textColor = Colors.white,
      this.textSize,
      this.padding,
      this.imageleft,
      this.readyToHit = true,
      this.useShadow = false,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return !readyToHit ? Center(child: Container(decoration: BoxDecoration(color: color,  borderRadius: BorderRadius.circular(radius),  ),padding: padding ??
        EdgeInsets.symmetric(vertical: 0, horizontal: 0) , child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation(Colors.white),),)) :
    Material(
      shadowColor: Colors.black54,
      elevation: 5,
      color: color,
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        borderRadius: BorderRadius.circular(radius),
        onTap: ontap ?? () {},
        child:  Container(
    decoration: BoxDecoration(

    ),
            width: double.infinity,
            padding: padding ??
                EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  imageleft != null ? Image.asset(imageleft!, height: 30,) :
              iconLeft == null
                  ? Container()
                  : Icon(
                      iconLeft,
                      color: textColor,
                    ),
              Expanded(
                child: Center(
                  child: GenText(
                    text,
                    style: TextStyle(
                        color: textColor, fontSize: textSize ?? 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              iconRight == null
                  ? Container()
                  : Icon(
                      iconRight,
                      color: textColor,
                    ),
            ])),
      ),
    );
  }
}

class GenButtonOutline extends StatelessWidget {
  final double radius;
  final String text;
  final IconData? iconLeft;
  final IconData? iconRight;
  final Color color;
  final Color textColor;
  final double? textSize;
  final Function? ontap;
  final double? width;

  const GenButtonOutline(
      {Key? key,
      this.radius = 50,
      this.text = "",
      this.iconLeft,
      this.iconRight,
      this.color = GenColor.primaryColor,
      this.textColor = GenColor.primaryColor,
      this.textSize,
      this.ontap,
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(radius)),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(radius),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius),
          onTap: ontap!.call() ?? () {},
          child: Container(
              width: width ?? double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.w),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                iconLeft == null
                    ? Container()
                    : Icon(
                        iconLeft,
                        color: textColor,
                  size: textSize,
                      ),
                Expanded(
                  child: Center(
                    child: GenText(
                      text,
                      style: TextStyle(
                          color: textColor, fontSize: textSize ?? 40),
                    ),
                  ),
                ),
                iconRight == null
                    ? Container()
                    : Icon(
                        iconRight,
                        color: textColor,
                      ),
              ])),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback? onTap;
  final IconData? iconData;
  final Color? bgColor;
  final double? size;
  final String? text;

  const CircleButton({Key? key, this.onTap, this.iconData, this.size, this.bgColor, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return new InkResponse(
      onTap: onTap,
      child: text == null ?  Container(
        width: size ?? 30,
        height: size ?? 30,
        decoration: new BoxDecoration(
          color: bgColor ?? GenColor.primaryColor,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.white,
          size: 16,
        ),
      ) : Container(
        padding: EdgeInsets.all(8),
        height: size ?? 30,
        decoration: new BoxDecoration(
          color: bgColor ?? GenColor.primaryColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Row(
          children: [
            GenText(text!, style: TextStyle(color: Colors.white, fontSize: 13),),
            SizedBox(width: 10,),
            Icon(
              iconData,
              color: Colors.white,
              size: 16,
            ),
          ],
        ),
      ) ,
    );
  }
}

class LineButton extends StatelessWidget {
  final IconData? leftIcon;
  final IconData? rightIcon;
  final String text;
  final EdgeInsets? padding;
  final double? textSized;
  final Color? textColor;
  final Function()? ontap;

  const LineButton({Key? key, this.leftIcon, this.ontap, this.rightIcon, required this.text, this.padding, this.textSized, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap ?? (){},
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 1, color: Colors.black26))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(leftIcon ?? Icons.bookmarks_outlined, color: textColor ?? Colors.black,),
                SizedBox(width: GenDimen.spaceDetail, ),
                GenText(text, style: TextStyle(color: textColor ?? Colors.black,),)
              ],
            ),
            Icon(rightIcon ?? Icons.chevron_right_outlined, color: textColor ?? Colors.black,),
          ],
        ),
      ),
    );
  }
}
