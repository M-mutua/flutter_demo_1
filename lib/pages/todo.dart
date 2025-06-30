import 'package:flutter/material.dart';
import 'package:flutter_application_1/util/newtodo.dart';
import 'package:flutter_application_1/util/todotile.dart';
/*import 'package:flutter_application_1/util/todotile.dart';*/
// ignore: camel_case_types
class toDoApp extends StatefulWidget {
  const toDoApp({super.key});
 
  @override
  State<toDoApp> createState() => _toDoAppState();
}

// ignore: camel_case_types
class _toDoAppState extends State<toDoApp> {

  final controller = TextEditingController();
  List toDoList = [
    ["Sleep", false],
    ["Exercise", true],
  ];

  void checkBoxChange(bool? value, int index){
      setState(() {
        toDoList[index][1] = !toDoList[index][1];
      });
  }
  void saveNewToDo(){
    setState(() {
      toDoList.add([controller.text, false]);
      controller.clear();
      //Navigator.pop(context);
    });
    Navigator.of(context).pop();
  }
  void createNewToDo(){
    showDialog(
      context: context, 
      builder: (context){ 
          return DialogBox(
            controller: controller,
            onSave: saveNewToDo,
            onCancel: () =>Navigator.pop(context)
          );
      }
      );  
  }
  void deleteTask(int index){
    setState(() {
      toDoList.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
         backgroundColor: Colors.purple[600],
         title: Text("To Do List"),
         elevation: 0,
         centerTitle: true,
      ), 
      floatingActionButton: FloatingActionButton(
        onPressed:() {
           createNewToDo();
        },
        child: Icon(Icons.add),
        ),
      body: ListView.builder(
        itemCount: toDoList.length, 
        itemBuilder: (context, index) {
          return Todotile(
            taskName: toDoList[index][0], 
            taskCompleted: toDoList[index][1], 
            onChanged:(value) => checkBoxChange(value, index),
            deleteFunction:(p0) => deleteTask(index),
          ); 
        },
      )
    ); 
  }
} 