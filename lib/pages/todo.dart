import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/database.dart';
import 'package:flutter_application_1/util/newtodo.dart';
import 'package:flutter_application_1/util/todotile.dart';
import 'package:hive/hive.dart';
/*import 'package:flutter_application_1/util/todotile.dart';*/
// ignore: camel_case_types
class toDoApp extends StatefulWidget {
  const toDoApp({super.key});
 
  @override
  State<toDoApp> createState() => _toDoAppState();
}

// ignore: camel_case_types
class _toDoAppState extends State<toDoApp> {
  // call data store
  final data = Hive.box('dataStore');
  final controller = TextEditingController();
  ToDoDtabase db = ToDoDtabase();

@override
  void initState() {
    // first time EVER opening the application
    if (data.get("key") == null) {
       db.createInitData();
    }
    else{
      db.loadData();
    }
    super.initState();
  }

 /* List toDoList = [
    ["Sleep", false],
    ["Exercise", true],
  ];
*/
  void checkBoxChange(bool? value, int index){
      setState(() {
        db.toDoList[index][1] = !db.toDoList[index][1];
      });
      db.updateDbase();
  }
  void saveNewToDo(){
    setState(() {
      db.toDoList.add([controller.text, false]);
      controller.clear();
      //Navigator.pop(context);
    });
    Navigator.of(context).pop();
    db.updateDbase();
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
      db.toDoList.removeAt(index);
    });
    db.updateDbase();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
         backgroundColor: Colors.purple[300],
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
        itemCount: db.toDoList.length, 
        itemBuilder: (context, index) {
          return Todotile(
            taskName: db.toDoList[index][0], 
            taskCompleted: db.toDoList[index][1], 
            onChanged:(value) => checkBoxChange(value, index),
            deleteFunction:(p0) => deleteTask(index),
          ); 
        },
      )
    ); 
  }
} 