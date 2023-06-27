import 'package:flutter/material.dart';
import 'package:project_test/component/lable_btn.dart';

import '../consts/colors.dart';

Widget BannerCard(){
  return Card(
    margin: EdgeInsets.only(right: 14),
    elevation: 0.4,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
    ),
    child: Stack(
      children: [
        Ink.image(image: AssetImage('assets/anantara-uluwatu-resort.jpg'),
          height: 188,
          width: 360,
          fit: BoxFit.cover,
        ),
        Container(
          child: Positioned(
            bottom: 16,
            right: 6,
            left: 16,
            top: 8,
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LabelPercent(),
                  Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Santorini',style: TextStyle(
                              fontSize: 18,color: whiteBtn,fontWeight: FontWeight.bold)),
                          Container(
                            margin: EdgeInsets.only(right: 16),
                            child: Row(
                              children: [
                                Icon(Icons.star,color: Colors.yellow,),
                                Text("4.8",style: TextStyle(
                                    fontSize: 18,color: Colors.white,fontWeight: FontWeight.w400))
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(Icons.location_on_outlined,color: Colors.grey,),
                                SizedBox(
                                  width: 4,
                                ),
                                Text('Greece',style: TextStyle(
                                  fontSize: 14,color: Colors.white70,fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text("\$488/",style: TextStyle(
                                  fontSize: 18,color: whiteBtn,fontWeight: FontWeight.bold)),
                              Text("night",style: TextStyle(
                                  fontSize: 14,color: Colors.white70,fontWeight: FontWeight.w400)),
                              SizedBox(width: 16,),
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ),
  );
}