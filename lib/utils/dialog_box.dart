import 'package:flutter/material.dart';
import 'package:todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController? controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
      backgroundColor: Colors.yellow[400],
      // ignore: sized_box_for_whitespace
      content: Container(
        height: 130,
        width: 260,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          // const SizedBox(height: 5),
          //Save and Cancel Button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyButton(name: "Save", onpressed: onSave),
              const SizedBox(width: 10),
              MyButton(name: "Cancel", onpressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
