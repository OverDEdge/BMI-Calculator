import 'package:flutter/material.dart';
import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/result_arguments.dart';
import './input_card.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ResultArguments args = ModalRoute.of(context).settings.arguments;
    TextStyle _resultNumberTextStyle = resultNumberTextStyle.copyWith(
      color: Theme.of(context).cardColor,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                height: max(resultScreenMinHeight, constraints.maxHeight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: resultTopTextFlex,
                  child: Container(
                    child: Center(
                      child: Text(
                        'Your Result',
                        style: resultTopTextStyle,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: resultCardFlex,
                  child: InputCard(
                    color: activeCardColor,
                    gestureFunction: null,
                    child: Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            args.result,
                            style: resultCardTextTextStyle,
                          ),
                          Text(
                            args.bmi,
                            style: _resultNumberTextStyle,
                          ),
                          Text(
                            args.advice,
                            textAlign: TextAlign.center,
                            style: resultAdviceTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: resultCalcBmiFlex,
                  child: BottomButton(
                    text: 'RE-CALCULATE',
                    route: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
