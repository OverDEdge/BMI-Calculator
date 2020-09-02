import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({this.height, this.weight});

  String calculateBmi() {
    double heightInMeters = height / 100.0;
    _bmi = weight / pow(heightInMeters, 2);

    return _bmi.toStringAsFixed(1); // Only output one decimalplace
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'OBESE';
    } else if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getAdvice() {
    if (_bmi >= 30) {
      return 'You are very overweight. Please consult your doctor for health plan to reduce your weight.';
    } else if (_bmi >= 25) {
      return 'You have a higher than normal body weight. You should try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Keep doing what you are doing!';
    } else {
      return 'You have a lower than normal body weight. Maybe go grab an extra chocolate bar on your way home!';
    }
  }
}
