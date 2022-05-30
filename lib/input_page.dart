// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

// Constant used
const bottomContainerHeight = 70.0;
const purpleBlack = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
const bottomColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveColor;
  Color femaleCardColor = inactiveColor;
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveColor) {
        maleCardColor = purpleBlack;
        femaleCardColor = inactiveColor;
      } else {
        maleCardColor = inactiveColor;
      }
    } else if (gender == 2) {
      if (femaleCardColor == inactiveColor) {
        femaleCardColor = purpleBlack;
        maleCardColor = inactiveColor;
      } else {
        femaleCardColor = inactiveColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI CALCULATER')),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: CustomIcon(
                        iconType: FontAwesomeIcons.mars,
                        iconName: "MALE",
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print("Female button is pressed");
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: CustomIcon(
                        iconType: FontAwesomeIcons.venus,
                        iconName: "FEMALE",
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: ReusableCard(
                  colour: purpleBlack,
                )),
              ],
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    colour: purpleBlack,
                  )),
                  Expanded(
                    child: ReusableCard(
                      colour: purpleBlack,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: bottomColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ),
      ),
    );
  }
}
