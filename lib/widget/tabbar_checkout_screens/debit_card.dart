import 'package:e_commerce_project/constant/size.dart';
import 'package:e_commerce_project/feature/congratolation_screen/view.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../custom_textform.dart';
class DebitCard extends StatelessWidget {
  const DebitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormByField(
              inputTxt: TextInputType.text,
              color: Colors.white24,
              hint: 'Name on Card',
              validator: (value) {},
              onSaved: (v) {},
            ),
            const SizedBox(height: 13),
            TextFormByField(
              inputTxt: TextInputType.number,
              color: Colors.white24,
              hint: 'Card Number',
              validator: (value) {},
              onSaved: (v) {},
            ),
            const SizedBox(height: 13),
            Row(
              children: [
                SizedBox(
                  width: sizeFromWidth(context, 2.3),
                  child: TextFormByField(
                    inputTxt: TextInputType.datetime,
                    color: Colors.white24,
                    hint: 'Exp date',
                    validator: (value) {},
                    onSaved: (v) {},
                  ),
                ),
                const SizedBox(width: 21),
                SizedBox(
                  width: sizeFromWidth(context, 2.3),
                  child: TextFormByField(
                    inputTxt: TextInputType.datetime,
                    color: Colors.white24,
                    hint: 'Exp date',
                    validator: (value) {},
                    onSaved: (v) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(children: [
                  Text("TOTAL AMOUNT",style: kstyle(context, 20, kblack),),
                  const SizedBox(height: 12,),
                  Text("\$1700.00",style: kstyle(context, 20, kblack)),
                ],),
                InkWell(
                  onTap: (){
                    kpush(context, const Congratolation());
                  },
                  child: SizedBox(
                    width: sizeFromWidth(context, 2.3),
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(50)
                      ),
                      child:Center(child: Text("Place order",style: kstyle(context, 20, kwhite),)),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),


          ],
        ),
      ),
    );
  }
}
