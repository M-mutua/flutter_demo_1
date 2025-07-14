import 'package:hive/hive.dart';

class ToDoDtabase {
  List toDoList = [

  ];
  // call box
   final data = Hive.box('dataStore');
  // this function is run when the app is run for the first time ever
   void createInitData(){
    toDoList = [
    ["Sleep", false],
    ["Exercise", false]
    ];
   }

  //loading the data on the dbase(hive, dataBase)
   void loadData(){
      toDoList = data.get("key");
   }

  //updating the database
   void updateDbase(){
      data.put("key", toDoList);
   }
}

