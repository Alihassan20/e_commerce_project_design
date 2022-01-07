import 'package:e_commerce_project/constant/style.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:e_commerce_project/widget/drawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../home/view.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:Stack(
        children: [
          Container(
              width: sizeFromWidth(context, 1),

              child: Image.asset('Image/carve0.png',fit:BoxFit.cover,width: sizeFromWidth(context, 1),
                  height: sizeFromHeight(context, 1))),
          Container(
              child: Image.asset('Image/carve.png',fit:BoxFit.cover,width: sizeFromWidth(context, 1),
                height: sizeFromHeight(context, 1),)),
          Padding(
            padding:  EdgeInsets.only(top: sizeFromHeight(context, 5.5),left: sizeFromWidth(context, 3)),
            child: Text("Hello Ali",style:kstyle(context, 35, Colors.white),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: sizeFromHeight(context, 3.5),left: sizeFromWidth(context, 4)),
            child: Text("Welcome to the Ramni",style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          Padding(
            padding:  EdgeInsets.only(top: sizeFromHeight(context, 2.5)),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    child: ClipRRect(
                      child: Image.asset('Image/ali.png'),
                    ),
                    maxRadius: 55,
                  ),
                  const SizedBox(height: 20),
                  RaisedButton(
                    elevation: 2,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    onPressed: (){},child: Text("Change Profile Picture",style: kstyle(context, 20, kPrimaryColor),),),
                   SizedBox(height: sizeFromHeight(context, 6)),
                  Container(
                    height: 50,
                    width: sizeFromWidth(context, 1.5),
                    child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        elevation: 2,
                        onPressed: () async {
                        },
                        child: const Text(
                          "Upload picture",
                          style: TextStyle(
                              color:kPrimaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        )),
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: (){},
                      child: Text("Skip",style: kstyle(context, 20, kwhite),)),
                  const SizedBox(height: 10),
                  Padding(
                    padding:  EdgeInsets.only(left: sizeFromWidth(context, 1.35)),
                    child: RaisedButton(
                      elevation: 2,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      onPressed: (){
                        kpush(context, DrawerScreen());
                      },child: Text("Next",style: kstyle(context, 20, kPrimaryColor),),),
                  ),

                ],
              ),
            ),
          )


        ],
      ) ,
    );
  }
}
