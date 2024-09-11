import 'package:calculator/abstract_calc.dart';
import 'dart:io';

class Calculator implements Calc{

 @override
 int? num1;
 @override
 int?num2;
 @override
 String? operator;
 @override
 var result;

 @override
 void getData(num1,num2,operator){


   stdout.write("Enter the first number = ");
   String? num1string =stdin.readLineSync();
  int?num1=int.tryParse(num1string ??"");


   stdout.write("Enter the second number = ");
   String? num2string =stdin.readLineSync();
   int?num2=int.tryParse(num2string ??"");

   if(num1!&num2! ==num){
    print('please enter num ');
    }

   stdout.write("select an operation +,-,*,/ ");
   String? operator =stdin.readLineSync();


   switch(operator){
    case '+':{result=num1+num2; stdout.write("Result:$num1$operator$num2 =$result");}
       break;
    case '-':{result=num1-num2;stdout.write("Result:$num1$operator$num2 =$result");}
    break;
    case '*':{result=num1*num2;stdout.write("Result:$num1$operator$num2 =$result");}
    break;
    case '/':{result=num1/num2;if(num2!=0){stdout.write("$num1$operator$num2 =$result");}
    else{print('Error cannot division by Zero');
   getData(num1,num2,operator);}}
    break;
    default:{print("try +,-,*,/");
    getData(num1,num2,operator);}
   }

}}