import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:testing_flutter_app/app/component/inputwidget.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          FloatingActionButton(
            heroTag: '+',
            onPressed: () {
              controller.result!.text = controller
                  .add(double.parse(controller.input1!.text),
                      double.parse(controller.input2!.text))
                  .toString();
            },
            child: const Text('+'),
          ),
          FloatingActionButton(
            heroTag: '-',
            onPressed: () {
              controller.result!.text = controller
                  .substract(double.parse(controller.input1!.text),
                      double.parse(controller.input2!.text))
                  .toString();
            },
            child: const Text('-'),
          ),
          FloatingActionButton(
            heroTag: '*',
            onPressed: () {
              controller.result!.text = controller
                  .multiply(double.parse(controller.input1!.text),
                      double.parse(controller.input2!.text))
                  .toString();
            },
            child: const Text('*'),
          ),
          FloatingActionButton(
            heroTag: '/',
            onPressed: () {
              controller.result!.text = controller
                  .divide(double.parse(controller.input1!.text),
                      double.parse(controller.input2!.text))
                  .toString();
            },
            child: const Text('/'),
          ),
        ]),
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width / 18),
        child: Column(
          children: [
            InputWidget(name: 'Input 1', controller: controller.input1!),
            SizedBox(
              height: MediaQuery.of(context).size.height / 22,
            ),
            InputWidget(name: 'Input 2', controller: controller.input2!),
            SizedBox(
              height: MediaQuery.of(context).size.height / 22,
            ),
            InputWidget(name: 'Result ', controller: controller.result!),
          ],
        ),
      ),
    );
  }
}
