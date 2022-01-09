import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/resuable_card.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0A0E21),
        title: Text('BMI Calculator'),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                alignment: Alignment.bottomLeft,
                child: Text('Your Reuslt', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(resultText.toUpperCase(), style: kResultTextStyle),
                      Text(bmiResult, style: kBMITextStyle),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(interpretation,
                            style: kBodyTextStyle, textAlign: TextAlign.center),
                      ),
                    ]),
              ),
            ),
            BottomButton(
              text: "RE-CALCULATE",
              onPress: () {
                Navigator.pop(context);
              },
            )
          ]),
    );
  }
}
