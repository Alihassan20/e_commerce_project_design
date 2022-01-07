import 'package:e_commerce_project/feature/login/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:hw_introduction_screen/hw_introduction_screen.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
       children: [
         Stack(
           children: [
             Container(
                 width: sizeFromWidth(context, 1),

                 child: Image.asset('Image/carve0.png',fit:BoxFit.cover,width: sizeFromWidth(context, 1),
                     height: sizeFromHeight(context, 1))),
             Container(
                 child: Image.asset('Image/carve.png',fit:BoxFit.cover,width: sizeFromWidth(context, 1),
                   height: sizeFromHeight(context, 1),)),
             HwIntroductionScreen(
                 indicatorActiveColor: Colors.black,
                 skipButton: const Center(child: Text("Skip",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white))),
                 nextButtonColor:  Colors.white,
                 nextButton: const Center(child: Text("Next",style: TextStyle(fontWeight: FontWeight.bold),)),
                 finishButtonColor: Colors.white,
                 finishButton: const Center(child: Text("GET STARTED",style: TextStyle(fontWeight: FontWeight.bold))),

                 onFinish: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const Login()));
                 },
                 items: // this param is required
                 [
                   HwIntroductionItem(
                       image: Container(
                           height: sizeFromHeight(context,1.6),
                           child: Image.asset('Image/circle.png')) // Widget
                   ),
                   HwIntroductionItem(
                       image: Flexible(
                         child: Container(
                             height: sizeFromHeight(context,1.3),
                             child: Image.asset('Image/pakage.png')),
                       ) // Widget
                   ),
                   HwIntroductionItem(
                       image: Expanded(child: Image.asset('Image/go.png')) // Widget
                   ),

                 ]
             ),

           ],
         ),
       ],
      ),
    );
  }
}
