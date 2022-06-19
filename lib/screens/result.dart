import 'package:flutter/material.dart';

import 'package:bmi_calculater/components/constants.dart';
import 'package:bmi_calculater/components/reusable_card.dart';

import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({
    Key? key,
    this.bmiResult,
    this.bmiText,
    this.bmiInterpretation,
  }) : super(key: key);

  final String? bmiResult;
  final String? bmiText;
  final String? bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATER',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Text(
                'Your Result',
                style: kTitleStyle,
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiText!.toUpperCase(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmiResult!,
                      style: kBMITextStyle,
                    ),
                    Text(
                      bmiInterpretation!,
                      textAlign: TextAlign.center,
                      style: kBMIResultStyle,
                    ),
                  ],
                ),
              ),
            ),
            BelowButton(
              value: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
