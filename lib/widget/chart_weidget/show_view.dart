import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constant/color.dart';
import '../../constant/style.dart';
import '../../feature/details_screen/cubit.dart';
class ShowChart extends StatelessWidget {
  String img;
  String name;
  int price;
  ShowChart(this.img,this.name,this.price);

  @override
  Widget build(BuildContext context) {
    final cubit2 = CounterCubit.of(context);
    return Padding(
      padding: const EdgeInsets.only(right: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)
            ),
            height: 150,
            width: 150,
            child: Image.asset(img),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: kstyle(context, 18, Colors.black),),
              const SizedBox(height: 13),
              Text("\$$price",style: kstyle(context, 18, Colors.black),),
              const SizedBox(height: 13),
              Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                      color: kblack.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child:  Builder(
                      builder: (context) {
                        return BlocBuilder(
                          bloc: cubit2,
                          builder: (BuildContext context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(onTap: (){
                                  cubit2.add();
                                } ,child:const  Icon(Icons.add,color: Colors.white,)),
                                Text(cubit2.counter.toString(),style: const TextStyle( color: Colors.white,fontSize: 20),),
                                GestureDetector(onTap: (){
                                  cubit2.minus();
                                },child: const Icon( Icons.remove, color: kwhite, ),),
                              ],
                            );
                          },

                        );
                      }
                  )),

            ],
          )
        ],
      ),
    );
  }
}
