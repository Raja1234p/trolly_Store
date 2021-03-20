
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConstantWidget{
  final blackColor=Colors.black;
  final greyColor=Colors.grey;
  final redColor=Colors.red;


  Widget CustomText(String txt,FontWeight fontWeight,Color color,double fontSize){
    return Text(txt,style: TextStyle(fontWeight: fontWeight,color:color,fontSize:fontSize  ),);
  }

}