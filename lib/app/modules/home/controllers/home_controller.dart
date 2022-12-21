import 'package:get/get.dart';

class HomeController extends GetxController {
  double? a,b;
  int? c,d;

  double add(double a, double b) => a + b;
  double substract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => a / b;
}
