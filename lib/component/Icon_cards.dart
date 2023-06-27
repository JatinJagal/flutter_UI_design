import 'package:flutter/material.dart';
import 'package:project_test/component/images.dart';
import 'package:project_test/consts/colors.dart';
import 'package:project_test/consts/lists.dart';
import 'package:project_test/consts/strings.dart';

Widget IconBtnCards(txt,icn,selIndex,idx,width,marheight){
  return Container(
    margin: EdgeInsets.only(right: marheight,bottom: 12,top: 14),//6
    // height: 110,
    width: width, //84
    decoration: BoxDecoration(
      color: selIndex == idx ? skyblue : Colors.white,
      border: Border.all(width:selIndex == idx ? 0.0 : 0.9,color: shadowcolor),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
          color: selIndex == idx ? shadowCard : Colors.white,
          blurRadius: selIndex == idx ? 12.0 : 0.0,
          // spreadRadius: 5.0,
          offset: Offset(6.0, 2.0),
        )
      ]
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(onPressed: (){},
            icon: Image.asset(icn,color: selIndex == idx ? Colors.white : icColor)),
        Text(txt,style: TextStyle(color: selIndex == idx ? Colors.white : icColor,fontSize: 15),)
      ],
    ),
  );
}