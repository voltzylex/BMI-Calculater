import 'package:flutter/material.dart';

const iconsStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class CustomIcon extends StatelessWidget {
  CustomIcon({this.iconType, this.iconName});
  final IconData? iconType;
  final String? iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconType,
          size: 85.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          iconName!,
          style: iconsStyle,
        ),
      ],
    );
  }
}
