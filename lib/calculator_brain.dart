import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
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
      return 'BMI is not necessarily that useful; about 50% of \"Overweight\" people are perfectly healthy, and indeed some studies suggest a slightly high BMI is correlated with longer life. But... you know. Exercise presumably isn\'t going to hurt anything, if you don\'t feel like you\'re getting enough already.';
    } else if (_bmi > 18.5) {
      return 'BMI is not necessarily that useful. About 1/3 of \"Normal\" people still have unhealthy cardiometabolic profiles. But, hey, there\'s no new evidence here there\'s anything wrong with you; that\'s worth something.';
    } else {
      return 'BMI is not necessarily that useful. But you might want to check with your doctor about whether you\'re at a healthy weight for you.';
    }
  }
}
