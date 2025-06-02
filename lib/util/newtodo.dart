import 'package:flutter/material.dart ';
import 'package:flutter_application_1/util/mybutton.dart';
 class DialogBox extends StatefulWidget {
     final controller;
     final VoidCallback onSave;
     final VoidCallback onCancel;
    DialogBox({
      super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave    
      });

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
   @override
   Widget build(BuildContext context) {
     return AlertDialog(
      backgroundColor: Colors.purple[100],
      content: SizedBox(
        height: 200,
        //get user input
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new Task"
              ),
            ),
          
      //add and cancel new tasks
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
        Mybutton(text: "Save", onPressed: widget.onSave),
        const SizedBox(width: 7),
        Mybutton(text: "Cancel", onPressed: widget.onCancel)
      ],
      )
          ],
        ), 
        ),
     );
   }
}