import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../widget/check_box_listtile.dart';


class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  // Color getColor(Set<MaterialState> states) {
  //   const Set<MaterialState> interactiveStates = <MaterialState>{
  //     MaterialState.pressed,
  //     MaterialState.hovered,
  //     MaterialState.focused,
  //   };
  //   if (states.any(interactiveStates.contains)) {
  //     return Colors.blue;
  //   }
  //   return kPrimaryColor;
  // }


  @override
  Widget build(BuildContext context) {
    final list1 =  {
      'Beds' : false,
      'Cabinets' : false,
      'Chairs And Seating' : false,
      'Chests' : false,
      'Clocks' : false,
    };
    final list2 =  {
      'Roche Bobois' : false,
      'Edra' : false,
      'Poliform' : false,
      'Christopher Guy' : false,
      'Kartell' : false,
    };

    bool _value = false;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0), // here the desired height
        child: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10.withOpacity(0.7),
          leadingWidth: 100,
          leading:Padding(
            padding: const EdgeInsets.only(left: 15,top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    kpop(context);
                  },
                  child: const Text("X",style:  TextStyle(
                      fontSize: 20,
                      color: kblack,
                  ),),
                ),
                const SizedBox(width: 20,),
                const Expanded(child:  Text("Filters",style: TextStyle(color: kblack,fontSize: 18),)),

              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories",style: kstyle(context, 20, Colors.black),),
                const SizedBox(width: 30),
                const Expanded(
                  child:  Divider(thickness: 2,color: Colors.black12),
                ),

              ],
            ),
          ),
          CheckBoxField(List: list1),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 60,top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Brand",style: kstyle(context, 20, Colors.black),),
                const SizedBox(width: 80),
                const Expanded(
                  child:  Divider(thickness: 2,color: Colors.black12),
                ),

              ],
            ),
          ),
          CheckBoxField(List: list2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child:Center(child: Text("Apply Filter",style: kstyle(context, 20, kwhite),)),
            ),
          ),

        ],
      ),
    );
  }
}
