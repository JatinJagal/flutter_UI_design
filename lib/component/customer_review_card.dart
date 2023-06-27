import 'package:flutter/material.dart';
import 'package:project_test/component/images.dart';

Widget CusterReviewCard(){
  return Container(
    margin: EdgeInsets.only(top: 8),
    height: 70,
    width: 450,
    // color: Colors.green,
    child: Center(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 6),
            height: 64,
            width: 64,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              image: DecorationImage(
                  image: AssetImage('assets/OIP (1).jfif'))
            ),
          ),
          SizedBox(width: 10,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Harleen Smith',style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,)),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Icon(Icons.star,color: Colors.orangeAccent,),
                    Text('4.8',style: TextStyle(
                        fontSize: 16,color: Colors.black,fontWeight: FontWeight.w400)),
                    Text(' (6.8K review)',style: TextStyle(
                        fontSize: 16,color: Colors.black54,fontWeight: FontWeight.w400))
                  ],
                ),
              ],
            ),
          SizedBox(width: 46, //70
          ),
          Container(
            height: 50,
            width: 50,
            child: Image.asset(icChat,height: 8,width: 8,),
            decoration: BoxDecoration(
                color: Colors.orange,
              borderRadius: BorderRadius.circular(18.0)
            ),
          )

        ],
      ),
    ),
  );
}