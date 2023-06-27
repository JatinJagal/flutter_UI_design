import 'package:flutter/material.dart';
import 'package:project_test/component/images.dart';
import 'package:project_test/consts/colors.dart';

Widget CustomIconButton(icn){
  return Container(
    child: Container(height: 50,width: 50,
    child:Image.asset(icn,height: 14,width: 14,fit: BoxFit.none,color: Colors.black,),
    // Icon(Icons.search,color: Colors.black,),),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50),
      color: Colors.white,
      boxShadow: const [
        BoxShadow(
          color: shadowcolor,
          blurRadius: 25.0,
          // spreadRadius: 5.0,
          offset: Offset(8.0, 8.0),
        )
      ]
    ),
  ));
}