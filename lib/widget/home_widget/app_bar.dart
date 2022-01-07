import 'package:e_commerce_project/feature/chart/view.dart';
import 'package:e_commerce_project/navigate/navigator.dart';
import 'package:flutter/material.dart';

import '../../constant/size.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      elevation: 0,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black12,
          //     blurRadius: 2.0,
          //     spreadRadius: 0.0,
          //     offset:
          //     Offset(2.0, 2.0), // shadow direction: bottom right
          //   )
          // ],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 45, horizontal: 5),
              child: GestureDetector(
                child: const Icon(
                  Icons.menu,
                  color: Colors.black87,
                ),
                onTap: () {
                  print("xx");
                },
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 45,
                    horizontal: sizeFromWidth(context, 18)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector (
                      behavior: HitTestBehavior.translucent,
                      child: const Icon(
                        Icons.add_alert_rounded,
                        color: Colors.black87,
                      ),
                      onTap: () {},
                    ),
                    const SizedBox(width: 20),
                    GestureDetector (
                      behavior: HitTestBehavior.translucent,
                      child: const Icon(
                        Icons.add_shopping_cart_rounded,
                        color: Colors.black87,
                      ),
                      onTap: () {
                        kpush(context, const ChartScreen());
                        print('vxv');
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
