import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'reusable_card.dart';
import 'bottom_button.dart';
class Results extends StatelessWidget{
  final String interpretation;
  final String bmi;
  final String results;
  Results({required this.interpretation, required this.bmi, required this.results});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(

        title: Text('BMI Calculator'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            child: Text(
              'Your Result',
              style: kTitleStyle,
            ),
          ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(interpretation,
                  style: kResultTextStyle,
                  ),
                  Text(bmi,
                    style: kBMITextStyle,
                  ),
                  Text( results,
                  textAlign: TextAlign.center,
                    style: kBodyTextStyle,
                  )
                ],
              ),

            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: "Re-Calculate")

        ],
      ),
      

    );
  }
}