
import 'package:flutter/material.dart';

import '../../constant/color.dart';
import '../../constant/size.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Container(
        color: kPrimaryColor,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: sizeFromHeight(context, 1.13)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.group,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ))
                ],
              ),
            )
          ],
        ),
      );

  }
}
