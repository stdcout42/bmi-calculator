import 'dart:math';

class Calculator {
  final int height;
  final int weight;
  double _bmi;

  Calculator(this.height, this.weight) {
    calcualteBMI();
  }

  void calcualteBMI() {
    _bmi = weight / pow(height / 100, 2);
  }

  String getBMIString() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You body weight is higher than normal. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your body weight falls in the normal range. Good for you!';
    } else {
      return 'You are have a lower than normal body weight. Try to eat a bit more.';
    }
  }
}
