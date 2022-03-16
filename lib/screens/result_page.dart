import '../components/LowerButton.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Constatnts.dart';
import 'package:bmi_calculator/components/Reusable_card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    @required this.bmi,
    @required this.message,
    @required this.clr,
    @required this.adv,
  });

  final String message;
  final Color clr;
  final String adv;
  final String bmi;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      backgroundColor: Colors.transparent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kResText,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              CardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    message,
                    textAlign: TextAlign.center,
                    style: kLabelTextStyle.copyWith(
                      color: clr,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    child: Text(
                      bmi,
                      style: kLabelNumricStyle.copyWith(
                        fontSize: 100,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    child: Text(
                      adv,
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: LowerButton(
              text: 'RE-CALCULATE',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
