import 'package:flutter/material.dart';
class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Wrap(
          children:const [
             Text("Minimalist Styling Is Not About Creating A Cold, Hard, Empty White Box Of A Home. It Is About Using Simple And Natural Forms, And Taking Away Layers Without Losing The Aesthetic Appeal Of The Space. The Focus Is On Shape, With A Furniture And Accessories."
                ,style:  TextStyle(
                 fontWeight: FontWeight.w600,
                fontSize: 15
              ),),
          ],
        ),
      ),
    );
  }
}
