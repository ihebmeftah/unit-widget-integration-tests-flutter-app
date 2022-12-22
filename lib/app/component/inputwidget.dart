import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key, required this.name, required this.controller});
  final String name;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$name :     "),
        Expanded(
          child: TextFormField(
            controller: controller,
            decoration: const InputDecoration(border: OutlineInputBorder()),
          ),
        ),
      ],
    );
  }
}
