import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../../constant/style.dart';
import '../../navigate/navigator.dart';
import '../../widget/chart_weidget/show_view.dart';
import '../check_out/view.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // here the desired height
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white10.withOpacity(0.7),
            leading:GestureDetector(
              onTap: (){
                kpop(context);
              },
              child:  const Icon(Icons.arrow_back,color: Colors.black,),
            ),
            title: const Text("YOUR CART",style:  TextStyle(color: kblack),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: sizeFromHeight(context, 1),
          child: Column(
            children: [
              ShowChart("Image/chair.png",'Ramni Chair',1700),
              const SizedBox(height: 12,),
              ShowChart("Image/cahir2.png",'Panka Chair',1700),

              Padding(
                padding: const EdgeInsets.only(top: 120),
                child: Column(
                  children: [
                    Text("TOTAL AMOUNT",style: kstyle(context, 25, kblack),),
                    const SizedBox(height: 12,),
                    Text("\$1700.00",style: kstyle(context, 25, kblack)),
                    const SizedBox(height: 12,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 120),
                      child: InkWell(
                        onTap: (){
                          kpush(context, CheckOut());
                        },
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child:Center(child: Text("CHECKOUT ",style: kstyle(context, 20, kwhite),)),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
