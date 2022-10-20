import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;
  late double _bmi;
  String calculatorBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi >= 18.5) {
      return 'normal';
    } else {
      return 'underweight';
    }
  }

  String getinterpetation() {
    if (_bmi >= 25) {
      return 'you have higher than normal body weight , try to exercise more';
    } else if (_bmi >= 18.5) {
      return 'you have normal body weight , Good job';
    } else {
      return 'you have lower than normal body weight , try to eat more';
    }
  }
}
