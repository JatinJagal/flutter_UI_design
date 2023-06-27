import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project_test/component/book_button.dart';
import 'package:project_test/component/customer_review_card.dart';
import 'package:project_test/component/icon_button.dart';
import 'package:project_test/component/images.dart';
import 'package:project_test/dimentions.dart';
import 'dart:ui' as ui;

import 'component/Icon_cards.dart';
import 'consts/lists.dart';
class HotelPageScreen extends StatefulWidget {
  const HotelPageScreen({Key? key}) : super(key: key);

  @override
  State<HotelPageScreen> createState() => _HotelPageScreenState();
}

class _HotelPageScreenState extends State<HotelPageScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // print("Current height"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body:Stack(
        children:[

          //-------------- Main Image Section -------------------

          Positioned(
            left: 0,
            right: 0,
            top: -30,
            child: Container(
            width: double.maxFinite,
              height: Dimensions.popularItemImagSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/anantara-uluwatu-resort.jpg"),
                    fit: BoxFit.cover)
              ),
        ),
          ),

          //-------------- Top navogation Icon Button Section -------------------

          Positioned(
            top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIconButton(icnBack),
                       Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomIconButton(icnShare),
                            SizedBox(width: 10,),
                            CustomIconButton(icnLike),
                            SizedBox(width: 10,),
                          ],
                        ),
                    ],
                  ),
                  SizedBox(height: 68,), //54
                  Container(height: 40,width: 100,child: Center(
                      child: Text('124 photos',
                        style: TextStyle(fontSize: 16,
                            color: Colors.white54,
                            fontWeight: FontWeight.normal),)),
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(24)),)
                ],
              ) ),

          //-------------- Main Body Section -------------------

          Positioned(
              left: 0,
              right: 0,
              top: Dimensions.popularItemImagSize-100, //110
              child: Container(
                height: 800, //860
                // color: Colors.black,
                // margin: EdgeInsets.only(left: 10,right: 10),
                  padding: EdgeInsets.only(
                      left: Dimensions.width20,
                      right: Dimensions.width20,
                      top: Dimensions.height20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),


                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: Dimensions.height10,),

                    //-------------- Title , Review and rate Section -------------------

                    Text('Bali Motel',style: TextStyle(
                        fontSize: 34,color: Colors.black,
                        fontWeight: FontWeight.bold),),
                    Text('Vung Tau',style: TextStyle(
                        fontSize: 34,color: Colors.black,
                        fontWeight: FontWeight.bold),),
                    SizedBox(height: 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.black54,),
                        SizedBox(
                          width: 2,
                        ),
                        Text('Indonesia',style: TextStyle(
                          fontSize: 14,color: Colors.black54,)),
                      ],
                    ),

                    SizedBox(height: 4,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.orangeAccent,),
                            Text('4.8',style: TextStyle(
                                fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400)),
                            Text(' (6.8K review)',style: TextStyle(
                                fontSize: 16,color: Colors.black54,fontWeight: FontWeight.w400))
                          ],
                        ),
                        Row(
                          children: [
                            Text('\$582/',style: TextStyle(
                                fontSize: 24,color: Colors.black,fontWeight: FontWeight.bold)),
                            Text("night",style: TextStyle(
                                fontSize: 18,color: Colors.black87,fontWeight: FontWeight.w400)),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),

                    //-------------- Divider -------------------
                    Divider(
                      height: 8,
                      color: Colors.black54,
                    ),
                    SizedBox(
                      height: 10,
                    ),


                    //--------------   Description Section -------------------

                    Text('Set in Vung Tau, 100 metres from Front Beach, BaLi',
                        style: TextStyle(color: Colors.black54,fontSize: 15.2 //14.2
                            ,height: 0)),
                    Text('Motel Vung Tau offers accommodation with a ',
                        style: TextStyle(color: Colors.black54,fontSize: 15.2, //14.2
                            height: 1.4)),
                    Row(
                      children: [
                        Text('garden, private parking and a shared...',
                            style: TextStyle(color: Colors.black54,fontSize: 15.2, //14.2
                                height: 1.4)),
                        Text('Read more',
                            style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 18.2,height: 1.4))
                      ],
                    ),
                    SizedBox(
                      height: 12,//8
                    ),

                  Text('What we offer',style: TextStyle(
                    fontSize: 26,color: Colors.black,fontWeight: FontWeight.bold)),

                    SizedBox(
                      height: 8,//4
                    ),

                    //-------------- Icon Card Button Section -------------------

                    Container(
                      // color: Colors.green,
                      height: 110,// 110 //108
                      // width: 84,
                      child:
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 6,
                          itemBuilder: (BuildContext context,int index){
                            return InkWell(
                                onTap: (){
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                },
                                child: IconBtnCards(
                                    icnName[index],
                                    icnList[index],selectedIndex,index,72.0,14.0 //10.0
                                ));
                          }),
                    ),

                    //-------------- Hosted by card Section -------------------

                    Text('Hosted by',style: TextStyle(
                        fontSize: 26,color: Colors.black,fontWeight: FontWeight.bold)),
                    CusterReviewCard(),

                    //-------------- Last Button Section -------------------

                    SizedBox(height: 6,),
                    BookButton()
                  ],
                ),
              ))
        ]
      )
    );
  }
}

