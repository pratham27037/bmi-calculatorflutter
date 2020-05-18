import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height,this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBmi(){
    _bmi = weight / pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >=25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'underweight';
    }
  }

  String getInterpretation(){
    if(_bmi >=25){
      return 'You are higher then the normal body weight,do some exercise';
    }else if(_bmi > 18.5){
      return 'You have Normal weight , Good job';
    }else{
      return 'You have lower body weiht , you can eat bit more';
    }
  }

}
