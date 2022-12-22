import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:testing_flutter_app/app/component/inputwidget.dart';
import 'package:testing_flutter_app/app/modules/home/controllers/home_controller.dart';
import 'package:testing_flutter_app/app/modules/home/views/home_view.dart';

void main() {
  setUp(
    () {
      Get.put(HomeController());
    },
  );
  group(
    'Widget Test group',
    () {
      testWidgets(
        "findsNWidgets :Asserts that the [Finder] locates 1 in the widget tree.",
        (widgetTester) async {
          await widgetTester.pumpWidget(const GetMaterialApp(home: HomeView()));
          expect(find.byType(TextFormField), findsNWidgets(3));
          expect(find.byType(Expanded), findsNWidgets(3));
          expect(find.byType(InputWidget), findsNWidgets(3));
          expect(find.byType(TextButton), findsNothing);
        },
      );
    },
  );
}
