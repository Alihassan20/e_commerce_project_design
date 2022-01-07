import 'package:e_commerce_project/constant/style.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../../widget/home_widget/app_bar.dart';
import '../../widget/home_widget/bottom_bar.dart';
import '../../widget/home_widget/category_feild.dart';
import '../../widget/home_widget/catrgory_txt.dart';
import '../../widget/home_widget/search.dart';
import '../details_screen/view.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String search = '';
    return Scaffold(
        resizeToAvoidBottomInset:false,
      body: Stack(
        children: [
          const Bottombar(),
          Container(
            height: sizeFromHeight(context, 1.15),
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0), // shadow direction: bottom right
                  )
                ],
                color: kwhite,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25))),
            child: Stack(
              children: [
                SearchHome(search),
                //Treanding
                Padding(
                  padding:  EdgeInsets.symmetric(vertical: sizeFromHeight(context, 8.2)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Trending products",style: kstyle(context, 15, Colors.black),),
                      Container(
                        width: 100,
                        child: const Divider(thickness: 2,color: Colors.black12),
                      ),
                      GestureDetector(
                        onTap: (){},
                          child: Text("See All",style: kstyle(context, 15, kPrimaryColor))),

                    ],
                  ),
                ),
                //list1
                Padding(
                  padding:  EdgeInsets.only(top:sizeFromHeight(context, 6.1) ),
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: [
                      CategoryField((){
                        kpush(context, DetailsScreen(
                            "Image/chair.png","Panka Chair",1000
                        ));
                      },"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){
                        kpush(context, DetailsScreen(
                            "Image/cahir2.png","Panka Chair",560
                        ));
                      },"Image/cahir2.png","Panka Chair",560),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000)





                    ],
                  ),
                ),
                //popular
                Padding(
                  padding:  EdgeInsets.only(top: sizeFromHeight(context, 2.25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("popular categories",style: kstyle(context, 15, Colors.black),),
                      Container(
                        width: 100,
                        child: const Divider(thickness: 2,color: Colors.black12),
                      ),
                      GestureDetector(
                          onTap: (){},
                          child: Text("See All",style: kstyle(context, 15, kPrimaryColor))),

                    ],
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(top:sizeFromHeight(context, 2.02)),
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: [
                      CategoryTxt('all'),
                      CategoryTxt('Electronics And Appliances'),
                      CategoryTxt('SHIRT'),
                      CategoryTxt('all')
                    ],
                  ),
                ),
                //list2
                Padding(
                  padding:  EdgeInsets.only(top:sizeFromHeight(context, 1.78)),
                  child: ListView(
                    scrollDirection:Axis.horizontal,
                    children: [
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/cahir2.png","Panka Chair",560),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000),
                      const SizedBox(width: 10),
                      CategoryField((){},"Image/chair.png","Panka Chair",1000)





                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }






}
