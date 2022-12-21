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
    "Group add",
    () {
      test(
        "add Test 1",
        () {
          expect(homeController!.add(400, 400), 800);
        },
      );

      test(
        "add Test 2",
        () {
          expect(homeController!.add(4005, 4005), 8010);
        },
      );
    },
  );

  group(
    "Group Future add",
    () {
      test(
        "Future add Test 1",
        () async {
          expect(await homeController!.futureAdd(400, 400), 800);
        },
      );

      test(
        "Future add Test 2",
        () async {
          expect(await homeController!.futureAdd(4005, 4005), 8010);
        },
      );
    },
  );

  group(
    "Group substract",
    () {
      test(
        "substract Test 1",
        () {
          expect(homeController!.substract(400, 400), 0);
        },
      );

      test(
        "substract Test 2",
        () {
          expect(homeController!.substract(4005, 4000), 5);
        },
      );
    },
  );
}
