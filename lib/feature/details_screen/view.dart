import 'package:e_commerce_project/constant/color.dart';
import 'package:e_commerce_project/constant/style.dart';
import 'package:e_commerce_project/feature/details_screen/state.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../tabbar_screen/description.dart';
import '../../tabbar_screen/offers.dart';
import '../../tabbar_screen/policy.dart';
import '../../tabbar_screen/reviews.dart';
import 'cubit.dart';
class DetailsScreen extends StatefulWidget {
  String img;
  String name;
  int price;
  DetailsScreen(this.img,this.name,this.price);

  @override
  _DescriptionState createState() => _DescriptionState();

}

class _DescriptionState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final cubit = CounterCubit.of(context);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: GestureDetector(
                onTap: (){
                  kpop(context);
                },
                child: const Icon(Icons.arrow_back,color: Colors.black,)),
            actions: [
              GestureDetector(
                onTap: (){},
                child: const Padding(
                  padding:  EdgeInsets.only(right: 10),
                  child: Icon(Icons.favorite,color: Colors.black87,),
                ),
              )
            ],
          ),
          body: Column(
            children: [
              Container(
                height: 300,
                width: 200,
                decoration:  BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(widget.img,)
                    )
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(widget.name,style: kstyle(context, 20, Colors.black),),
                  Row(
                    children:  [
                      const Icon(Icons.star,color: kPrimaryColor,),
                      const SizedBox(height: 5),
                      Text('2.5',style:kstyle(context, 20, Colors.black),),
                    ],
                  ),
                  Text("\$${widget.price}",style:  kstyle(context, 20, kPrimaryColor),)

                ],
              ),
              const  SizedBox(height: 12),
              const TabBar(
                labelColor: kPrimaryColor,
                unselectedLabelColor:Colors.black ,
                indicatorColor: Colors.black,
                tabs:[
                  Text("Description",style: TextStyle(fontSize: 13.5),),
                  Text("Reviews"),
                  Text("Offers"),
                  Text("Policy",),
                ],

              ),
               const Expanded(
                 child: Padding(
                   padding: EdgeInsets.only(top: 10),
                   child: TabBarView(
                     children: [
                       Description(),
                       Reviews(),
                       Offers(),
                       Policy(),
                     ],
                   ),
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(bottom: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child:  Builder(
                        builder: (context) {
                          return BlocBuilder(
                            bloc: cubit,
                            builder: (BuildContext context, state) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(onTap: (){
                                  cubit.add();
                                } ,child:const  Icon(Icons.add,color: Colors.white,)),
                                Text(cubit.counter.toString(),style: const TextStyle( color: Colors.white,),),
                                GestureDetector(onTap: (){
                                  cubit.minus();
                                },child: Text(" - ",style: TextStyle(fontSize: 40,color: Colors.white),)),
                              ],
                            );
                          },

                          );
                        }
                      )),
                    Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:const  [
                          Text("Add to cart",style: TextStyle(color: Colors.white),),
                          Icon(Icons.add_shopping_cart_rounded,color: Colors.white,)
                        ],
                      )),
                    ),

                  ],
                ),
              )



            ],
          )),
    );
  }
}


