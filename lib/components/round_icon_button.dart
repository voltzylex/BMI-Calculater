import 'package:bmi_calculater/components/constants.dart';
import 'package:flutter/material.dart';
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.pressed});
  final IconData? icon;
  final VoidCallback? pressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: kFloatingIconColor,
    );
  }
}