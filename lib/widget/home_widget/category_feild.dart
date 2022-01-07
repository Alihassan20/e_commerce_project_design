import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';
class CategoryField extends StatelessWidget {
  Function()? onTap;
  String img;
  String name;
  int price;
  CategoryField(this.onTap,this.img,this.name,this.price);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: 160,
          width:160 ,
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
              borderRadius: BorderRadius.circular(15),
              color: Colors.white70
          ),
          child: Column(
            children: [
              Container(
                height: sizeFromHeight(context, 6),
                  child: Image.asset("$img")),
               Text("$name"),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                   Text("$price\$",style:const  TextStyle(color: Colors.grey),),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 25,
                      width: 28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.black12
                      ),
                      child: Center(child: IconButton(onPressed: (){},icon: const Icon(Icons.add_shopping_cart_rounded),iconSize: 13,color: kPrimaryColor,)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
