import 'package:e_commerce_project/constant/color.dart';
import 'package:flutter/material.dart';
class CheckBoxField extends StatefulWidget {
  final Map<String, bool> List ;
  CheckBoxField({required this.List});

  @override
  State<CheckBoxField> createState() => _CheckBoxFieldState();

}

class _CheckBoxFieldState extends State<CheckBoxField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.List.keys.map((String key) {
        return  SizedBox(
          height: 43,
          child: CheckboxListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            title:  Text(key),
            value: widget.List[key],
            activeColor: kPrimaryColor,
            checkColor: Colors.white,
            onChanged: ( value) {
              setState(() {
                widget.List[key] = value!;
              });
            },
          ),
        );
      }).toList(),
    );
  }
}
