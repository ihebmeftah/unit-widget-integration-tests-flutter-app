import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  TextEditingController? input1 = TextEditingController();
  TextEditingController? input2 = TextEditingController();
  TextEditingController? result = TextEditingController();

  double add(double a, double b) => a + b;
  Future<double> futureAdd(double a, double b) async => Future.delayed(
        const Duration(seconds: 5),
        () => a + b,
      );

  double substract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => a / b;
}
