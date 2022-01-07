import 'package:e_commerce_project/constant/size.dart';
import 'package:e_commerce_project/constant/style.dart';
import 'package:e_commerce_project/widget/tabbar_checkout_screens/credit_card.dart';
import 'package:e_commerce_project/widget/tabbar_checkout_screens/debit_card.dart';
import 'package:e_commerce_project/widget/tabbar_checkout_screens/net_banking.dart';
import 'package:e_commerce_project/widget/tabbar_checkout_screens/upi.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../navigate/navigator.dart';
import '../../widget/custom_textform.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          // resizeToAvoidBottomInset:false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0), // here the desired height
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.white10.withOpacity(0.7),
              leading: GestureDetector(
                onTap: () {
                  kpop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              title: const Text(
                "Checkout",
                style: TextStyle(color: kblack),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Container(
              height: sizeFromHeight(context, 1),
              child: Column(
                // spacing: 20, // to apply margin in the main axis of the wrap
                // runSpacing: 20, // to apply margin in the cross axis of the wrap
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Text(
                      "Shipping Address",
                      style: kstyle(context, 25, Colors.black),
                    ),
                  ),
                  const SizedBox(height: 13),
                  TextFormByField(
                    inputTxt: TextInputType.text,
                    color: Colors.white24,
                    hint: 'Name',
                    validator: (value) {},
                    onSaved: (v) {},
                  ),
                  const SizedBox(height: 13),
                  TextFormByField(
                    inputTxt: TextInputType.streetAddress,
                    color: Colors.white24,
                    hint: 'Address',
                    validator: (value) {},
                    onSaved: (v) {},
                  ),
                  const SizedBox(height: 13),
                  TextFormByField(
                    inputTxt: TextInputType.number,
                    color: Colors.white24,
                    hint: 'Pincode',
                    validator: (value) {},
                    onSaved: (v) {},
                  ),
                  const SizedBox(height: 13),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,),
                    child: Text(
                      "Payment Method",
                      style: kstyle(context, 25, Colors.black),
                    ),
                  ),
                  const SizedBox(height: 13),
                  const  TabBar(
                    labelColor: kPrimaryColor,
                    unselectedLabelColor:Colors.black ,
                    indicatorColor: kPrimaryColor,
                    tabs: [
                      Text("Debit Card",style: TextStyle(fontSize: 13),),
                      Text("Credit Card",style: TextStyle(fontSize: 12)),
                      Text("UPI",style: TextStyle(fontSize: 13)),
                      Text("Net Banking",style: TextStyle(fontSize: 11)),
                    ],

                  ),
                  const SizedBox(height: 13),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        DebitCard(),
                        CreditCard(),
                        Upi(),
                        NetBanking()

                    ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
