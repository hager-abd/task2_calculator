import 'dart:io';

abstract class Calc{
  int? num1;
  int? num2;
  String? operator;
  var result;
  void getData(num1,num2,operator){
    this.num1=num1;
    this.num2=num2;
    this.operator=operator;

  }
}