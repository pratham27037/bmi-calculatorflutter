import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'reusable.dart';
import 'bottom_button.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.calculateBmi,@required this.getResult,@required this.getInterpretation});

  final String calculateBmi;
  final String getResult;
  final String getInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
               padding: EdgeInsets.all(15.0),
               alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                 style: kTitleTextStyle,
               ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveContainersColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    getResult,
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculateBmi,
                    style: kBmiReading,
                  ),
                  Text(
                    getInterpretation,
                    textAlign: TextAlign.center,
                    style: kComment,
                  )
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);},
          ),
        ],
      ),
    );
  }
}
