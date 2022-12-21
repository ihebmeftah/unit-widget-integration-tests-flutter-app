// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:testing_flutter_app/app/modules/home/controllers/home_controller.dart';

void main() {
  HomeController? homeController;
  setUp(
    () {
      homeController = HomeController();
    },
  );

  group(
    "Simple Test",
    () {
      test(
        "add",
        () {
          expect(homeController!.add(400, 400), 800);
        },
      );
      test(
        "substract",
        () {
          expect(homeController!.substract(400, 400), 0);
        },
      );
      test(
        "multiply",
        () {
          expect(homeController!.multiply(400, 400), 160000);
        },
      );
      test(
        "divide",
        () {
          expect(homeController!.divide(400, 400), 1);
        },
      );
    },
  );
}
