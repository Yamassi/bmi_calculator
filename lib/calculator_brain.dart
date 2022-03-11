import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Лишний вес';
    } else if (_bmi > 18.5) {
      return 'Нормальный вес';
    } else {
      return 'Недостаточный вес';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'У вас повышенная масса тела. Попробуйте больше заниматься упражнениями';
    } else if (_bmi > 18.5) {
      return 'У вас нормальная масса тела. Так держать!';
    } else {
      return 'У вас пониженная масса тела. Попробуйте кушать больше еды';
    }
  }
}
