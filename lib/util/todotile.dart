import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
// ignore: must_be_immutable
class Todotile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  void Function(BuildContext)? deleteFunction;

   Todotile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted, 
    required this.onChanged, 
    required this.deleteFunction
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(), 
          children: [
            SlidableAction(
              onPressed: deleteFunction, 
              icon: Icons.delete,
              backgroundColor: Colors.red.shade600,
              borderRadius: BorderRadius.circular(8.0),
              )
          ]
          ),
        child: Container(
          padding: EdgeInsets.all(25),
          // ignore: sort_child_properties_last
          child  : Row(
            children: [
              Checkbox(value: taskCompleted, onChanged: onChanged, activeColor: Colors.green,),
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
            color: Colors.purple.shade300,
            borderRadius: BorderRadius.circular(12)
        ),
          
        ),
      ),
    );

  }
}
