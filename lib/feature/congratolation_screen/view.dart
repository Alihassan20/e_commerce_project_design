import 'package:e_commerce_project/constant/color.dart';
import 'package:e_commerce_project/constant/size.dart';
import 'package:e_commerce_project/constant/style.dart';
import 'package:e_commerce_project/feature/home/view.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/material.dart';
class Congratolation extends StatelessWidget {
  const Congratolation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: sizeFromHeight(context, 6)),
            child: Image.asset('Image/cong.png'),
          ),
          const SizedBox(height: 40),
          Text("Your Order",style: kstyle(context, 30, kblack),),
          const SizedBox(height: 5),
          Text("Has Been Accepted",style: kstyle(context, 30, kblack),),
          const SizedBox(height: 30),
          Wrap(children:const [
            Text("Your items has been placcd and is onit’s way to being processed",style: TextStyle(fontSize: 20),textAlign:TextAlign.center,)], ),
          const SizedBox(height: 40),
          InkWell(
            onTap: (){

            },
            child: SizedBox(
              width: sizeFromWidth(context, 2),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(50)
                ),
                child:Center(child: Text("Track Order",style: kstyle(context, 20, kwhite),)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: (){
              kpush(context, const Home());
            },
            child: Text("Back to home",style: kstyle(context, 20, kblack),),
          ),

        ],
      ),
    );
  }
}
