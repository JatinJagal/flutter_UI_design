import 'package:flutter/material.dart';

Widget BookButton(){
  return Container(
    height: 60,
    width: 360,
    child: Center(child: Text('Book Now',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
    decoration: BoxDecoration(
      color: Colors.blueAccent,
      borderRadius: BorderRadius.circular(24)
    ),
  );
}