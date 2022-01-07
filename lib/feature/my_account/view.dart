import 'package:e_commerce_project/constant/style.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
import '../../widget/custom_textform.dart';
class MyAcoount extends StatelessWidget {
  const MyAcoount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Account"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20,top: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: kwhite,
                  borderRadius: BorderRadius.circular(20)
              ),
              width: 100,
              child: Center(child: Text("Edit Profile",style: kstyle(context, 12, kPrimaryColor),)),
            ),
          )
        ],
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Stack(
        children: [
          Container(
            height: sizeFromHeight(context, 1),
            width: sizeFromWidth(context, 1),
            color: kPrimaryColor,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: sizeFromHeight(context, 12),left: sizeFromWidth(context, 4)),
                  child: Column(
                    children: [
                      Image.asset(
                        'Image/ali.png',
                      ),
                      const SizedBox(height: 10),
                      Text("Pankaj Patel",style: kstyle(context, 18, kwhite),),
                      const SizedBox(height: 5),
                      Text("pankaj.patel@yahoo.com",style: kstyle(context, 18, kwhite))

                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: sizeFromHeight(context, 2.5)),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40,left: 20,right: 20),
                  child: ListView(
                    children: [
                      TextFormByField(
                        inputTxt: TextInputType.number,
                        validator: (v){},
                        icon: const Icon(Icons.auto_fix_high),
                        onSaved: (v){},
                        hint: '  Upcoming Orders ',
                      ),
                      const SizedBox(height: 15),
                      TextFormByField(
                        inputTxt: TextInputType.number,
                        validator: (v){},
                        onSaved: (v){},
                        icon: const Icon(Icons.add_location_alt ),
                        hint: '  Manage Address ',
                      ),
                      const SizedBox(height: 15),
                      TextFormByField(
                        inputTxt: TextInputType.number,
                        validator: (v){},
                        onSaved: (v){},
                        icon: const Icon(Icons.payment ),
                        hint: '  Update payment ',
                      ),
                      const SizedBox(height: 15),
                      TextFormByField(
                        inputTxt: TextInputType.number,
                        validator: (v){},
                        onSaved: (v){},
                        icon: const Icon(Icons.chat ),
                        hint: '  My Chats ',
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
