import 'package:flutter/material.dart';
import 'package:project_test/consts/colors.dart';

Widget LabelPercent(){
  return Container(
    padding: EdgeInsets.all(6),
    height: 34,
    width: 76,
    child: Center(child: Text('25% OFF',style: TextStyle(color: whiteBtn,fontWeight: FontWeight.bold),)),
    decoration: BoxDecoration(
      color: labelPercent,
      borderRadius: BorderRadius.circular(18)
    ),
  );
}