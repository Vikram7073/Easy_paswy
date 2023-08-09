
import 'package:flutter/material.dart';

import 'colorcontrant.dart';


class CustomButton extends StatelessWidget
{
  double? buttonWidth = 0;
  void Function() onTap;
  String? text;
  double? buttonHeight;
  double? textSize;
  Color? buttonColor;
  Color? textColor;
  double? horizontal;
  Color? color;
  BorderRadiusGeometry ? borderRadius;
  CustomButton({ Key? key,this.textSize = 18, this.horizontal,this.color, this.buttonHeight ,  this.buttonWidth, this.textColor, required this.onTap,
    this.text,this.borderRadius, this.buttonColor = ColorConstants.blackColor}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    bool pad;
    return InkWell(
      highlightColor:Colors.transparent ,
      onTap: onTap,
      child: Container(
        height: buttonHeight??50,
        width: buttonWidth??double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(color: color?? ColorConstants.themeColor,width: 1),
          color:color??ColorConstants.themeColor,
          borderRadius: borderRadius??BorderRadius.circular(10),
        ),
        child: Text(text??"",

        ),
      ),

    );
  }
}