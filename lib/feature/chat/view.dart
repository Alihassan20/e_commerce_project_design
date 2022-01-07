import 'package:e_commerce_project/constant/color.dart';
import 'package:e_commerce_project/constant/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant/size.dart';
import '../../widget/custom_textform.dart';
class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                IntrinsicHeight(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Image.asset('Image/logo.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("HI THERE!",style: kstyle(context, 25, kwhite),),
                            const Text("How can we help you?",style:  TextStyle(
                              fontSize: 18,
                              color: Colors.white
                            ),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: sizeFromHeight(context, 4.7)),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30,left: 20),
                      child: Container(
                        child: Row(
                          children: [
                            Image.asset("Image/ali.png",height: 60,),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Pankaj joined the chat"),
                                  SizedBox(height: 5),
                                  Text("2M Ago",style: TextStyle(color: Colors.black38),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(child: ListView(
                      children: [
                          Text("dcad"),
                        Text("dcad"),

                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),
                        Text("dcad"),


                      ],
                    )),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20,left: 10,right: 10),
                      child: TextFormByField(
                        inputTxt: TextInputType.name,
                        hint: 'Write a replay...',
                        row: Container(
                          width: sizeFromWidth(context, 2),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(onPressed: (){}, icon: const Icon(Icons.add_reaction_outlined,color: Colors.black,)),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file_sharp ,color: Colors.black,)),
                              IconButton(onPressed: (){}, icon: const Icon(Icons.send,color: Colors.black,)),


                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
