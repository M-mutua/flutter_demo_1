import 'package:flutter/material.dart';
// ignore: must_be_immutable
class Todotile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

   Todotile({super.key, required this.taskName, required this.taskCompleted, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Container(
        padding: EdgeInsets.all(25),
        // ignore: sort_child_properties_last
        child  : Row(
          children: [
            Checkbox(value: taskCompleted, onChanged: onChanged),
            Text(taskName,
            style: TextStyle(
              decoration: 
              taskCompleted ? TextDecoration.lineThrough:TextDecoration.none,
              fontSize: 20
            ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(12)
),
        
      ),
    );

  }
}
