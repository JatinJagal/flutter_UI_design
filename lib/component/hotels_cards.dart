import 'package:flutter/material.dart';
import 'package:project_test/consts/colors.dart';

Widget HotelsCard(htlimg,htlName,htlLoc,htlPrc,htlRate){
  return Card(
    margin: EdgeInsets.only(right: 16),
    elevation: 0.4,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16)
    ),
    child: Stack(
      children: [
        Ink.image(image: AssetImage(htlimg),
          height: 280,
          width: 168, //154
          fit: BoxFit.cover,
        ),
        Container(
          child: Positioned(
            bottom: 16,
            right: 4,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(htlName,style: TextStyle(
                    fontSize: 20, //16
                    color: whiteBtn,fontWeight: FontWeight.bold)),
                Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on_outlined,color: Colors.white70,),
                      SizedBox(
                        width: 4,
                      ),
                      Text(htlLoc,style: TextStyle(
                          fontSize: 16,//12
                        color: whiteBtn,)),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Text(htlPrc,style: TextStyle(
                        fontSize: 14,//18
                        color: whiteBtn,fontWeight: FontWeight.bold)),
                    Text("night",style: TextStyle(
                        fontSize: 14,color: Colors.white70,fontWeight: FontWeight.w400)),
                    SizedBox(width: 18,),
                    Icon(Icons.star,color: Colors.yellow,),
                    Text(htlRate,style: TextStyle(
                        fontSize: 16,color: Colors.white,fontWeight: FontWeight.w400))
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}