import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:testing_flutter_app/app/modules/home/views/home_view.dart';

void main() {
  group(
    'Widget Test group',
    () {
      testWidgets(
        "findsNWidgets :Asserts that the [Finder] locates 1 in the widget tree.",
        (widgetTester) async {
          await widgetTester.pumpWidget(const GetMaterialApp(home: HomeView()));
          expect(find.byType(Text), findsNWidgets(1));
        },
      );
    },
  );
}
