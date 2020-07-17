import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  //coz this is private value, you won't be able to access it on any other class
  //double _bmi;

  double calculateBMI() {
    double _bmi = weight / pow(height / 100, 2);
    //round to one decimal place
    // return _bmi.toStringAsFixed(1);
    return _bmi;
  }

  String getResults() {
    double _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    double _bmi = calculateBMI();
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
