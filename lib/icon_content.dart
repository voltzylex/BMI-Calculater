import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kTextStyle,
        ),
      ],
    );
  }
}
