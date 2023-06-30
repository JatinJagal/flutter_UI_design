import 'package:flutter/material.dart';
import 'package:project_test/component/Icon_cards.dart';
import 'package:project_test/component/banner_image.dart';
import 'package:project_test/component/hotels_cards.dart';
import 'package:project_test/component/icon_button.dart';
import 'package:project_test/component/images.dart';
import 'package:project_test/consts/colors.dart';
import 'package:project_test/consts/lists.dart';
import 'package:project_test/dimentions.dart';
import 'package:project_test/hotel_detail_page.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,//106
        elevation: 0.0,
        backgroundColor: whiteBtn,
        bottomOpacity: 0,
        title: Container(
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Where You',style: TextStyle(
                      fontSize: 30,color: Colors.black,
                      fontWeight: FontWeight.bold),),
                  Text('wanna go?',style: TextStyle(
                      fontSize: 30,color: Colors.black,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              CustomIconButton(icnSearch)
            ],
          )
        ),

        flexibleSpace: Directionality(
          textDirection: TextDirection.rtl,
          child: Image.asset(
            'assets/secmount.jpeg',
            fit: BoxFit.cover,
            height: 150,
            colorBlendMode: BlendMode.softLight,color: Colors.white,
            width: double.infinity,),
        ),
      ),


      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.only(left: 14.0,bottom: 10.0),
        color: whiteBtn,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                //------------Icon Button Card-------------------------
                Container(
                  // color: Colors.green,
                  height: Dimensions.height60,// 110 //114//124
                  // width: 84,
                  child:
                  ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                      itemBuilder: (BuildContext context,int index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                            child: IconBtnCards(btnName[index],btnList[index],selectedIndex,index,Dimensions.width95,10.0)); //84.0
                      }),
                ),
                SizedBox(
                  height: 12,//8
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    //------------Popular Hotel Text------------------------

                    Text('Popular Hotels',style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),),
                    Container(margin: EdgeInsets.only(right: 20),
                        child: Text('See all',style: TextStyle(
                            fontSize: 18,fontWeight: FontWeight.normal,color: darkOrange))),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),

                //------------Hotel Details Card-----------------------------

                Container(
                  // color: Colors.green,
                  height: 246,//232
                  child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index){
                        return HotelsCard(hotelImg[index],hotelName[index],hotelLoc[index],hotelPrice[index],hotelRate[index]);
                      }),
                ),
                SizedBox(
                  height: 6,
                ),

                //--------------------Hot Deals Text-------------------------

                Text('Hot Deals',style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(
                  height: 6,
                ),
                InkWell(
                    onTap: (){
                      Navigator.push((context), MaterialPageRoute(builder: (context)=>HotelPageScreen()));
                    },
                    child: BannerCard()),

            ],
          ),
        ),
      ),
    );
  }
}
