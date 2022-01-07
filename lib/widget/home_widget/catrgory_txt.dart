import 'package:flutter/material.dart';
class CategoryTxt extends StatelessWidget {
  String txt;
  CategoryTxt(this.txt);
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height:30,
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
        child:  Center(child: Text("   $txt   ",style:const  TextStyle(
            fontSize: 20
        ),)),
      ),
    );
  }
}
