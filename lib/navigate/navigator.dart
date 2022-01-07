import 'package:flutter/material.dart';



Future kpush (BuildContext context, Widget screen) {

  return Navigator.of(context).push(MaterialPageRoute(builder: (_)=>screen));
}
void kpop (BuildContext context) {

  return Navigator.of(context).pop();
}