import 'package:e_commerce_project/feature/filter/view.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/material.dart';

import '../../constant/size.dart';
class SearchHome extends StatelessWidget {
  var search="";
  SearchHome(this.search);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
           horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3.0,
                        spreadRadius: 0.4)
                  ]),
              child: TextFormField(
                style: const TextStyle(color: Colors.black),
                decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.white,
                      )),
                  errorBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15))),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.white,
                      )),
                  hintText: "Search  ",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  labelStyle: TextStyle(color: Colors.grey),
                ),
                keyboardType: TextInputType.text,
                validator: (val) {
                  if (val!.isEmpty) {
                    return 'Valid Search';
                  }
                  return null;
                },
                onSaved: (val) {
                  search = val!;
                },
              ),
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              kpush(context,const  FilterScreen());
              print(';');
            },
            child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(15)),
                child: const Icon(Icons.filter_tilt_shift )),
          )
        ],
      ),
    );
  }
}
