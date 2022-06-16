import 'package:bmi_calculater/components/constants.dart';
import 'package:flutter/material.dart';

class BelowButton extends StatelessWidget {
  BelowButton({Key? key, @required this.value,@required this.onTap}) : super(key: key);
  final String? value;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // Pink Botom Container 👇👇👇
        color: kBottomColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            '$value',
            style: TextStyle(
                color: Color.fromARGB(255, 2, 248, 14),
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ),
      ),
    );
  }
}