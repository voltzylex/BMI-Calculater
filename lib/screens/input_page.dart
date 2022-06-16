// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:bmi_calculater/components/constants.dart';
import 'package:bmi_calculater/screens/result.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import '../components/round_icon_button.dart';


// Using Enums
enum Gender { male, female }

// Where The main code is started
class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF0A0E21),
        title: Center(child: Text('BMI CALCULATER ')),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectGender = Gender.male;
                        });
                      },
                      colour: selectGender == Gender.male
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: CustomIcon(
                        iconType: FontAwesomeIcons.mars,
                        iconName: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectGender = Gender.female;
                        });
                      },
                      colour: selectGender == Gender.female
                          ? kActiveColor
                          : kInactiveColor,
                      cardChild: CustomIcon(
                        iconType: FontAwesomeIcons.venus,
                        iconName: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              colour: kActiveColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Center(
                    child: Text(
                      'HEIGHT',
                      style: kTextStyle,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        kHeightValue.toString(),
                        style: kIconsSize,
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'cm',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey[600],
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x40EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: kHeightValue.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      onChanged: (double newValue) {
                        setState(() {
                          kHeightValue = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Weight',
                            style: kTextStyle,
                          ),
                          Text(
                            kWeightValue.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  pressed: () {
                                    setState(() {
                                      kWeightValue--;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  pressed: () {
                                    setState(() {
                                      kWeightValue++;
                                    });
                                  },
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'AGE',
                            style: kTextStyle,
                          ),
                          Text(
                            kAgeValue.toString(),
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w900),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                RoundIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  pressed: () {
                                    setState(() {
                                      kAgeValue--;
                                    });
                                  },
                                ),
                                SizedBox(width: 15),
                                RoundIconButton(
                                  icon: FontAwesomeIcons.plus,
                                  pressed: () {
                                    setState(() {
                                      kAgeValue++;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BelowButton(
              value: 'Calculate',onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultPage()));
      },
            ),
          ],
        ),
      ),
    );
  }
}

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


