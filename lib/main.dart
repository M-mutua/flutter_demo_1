import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/first.dart';
import 'package:flutter_application_1/pages/counter.dart';
import 'package:flutter_application_1/pages/textcontrol.dart';
import 'package:flutter_application_1/pages/todo.dart';

void main() {
  runApp (MyApp());
   }
class MyApp extends StatelessWidget {
   const MyApp({super.key});
    /*void userClick(){
     print("Hooray");
   }
  */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: First(),
       theme: ThemeData(primarySwatch: Colors.purple),
        routes: {
          '/home' : (context) => Home(),
          '/profile' : (context) => Profile(),
          '/todoapp' : (context) => toDoApp(),
        },
      /* Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("First Application"),
          backgroundColor: Colors.amberAccent,
          elevation: 0 ,
          leading: Icon(Icons.menu),
          actions: [IconButton(onPressed:  () {}, icon: Icon(Icons.logout))
           ],
        ),
        body: 
        Center(
          child: GestureDetector(
            onTap: userClick,
          child: Container(
            height: 200,
            width: 300,
            color: Colors.blueAccent,
            child: Center(child: Text("Click Here!")),
          ),
        ),
        ),
        /*Stack(
          alignment: Alignment.center,
          children: [
          Container(height: 400, width: 400, color: Colors.deepOrange,),
          Container(height: 300, width: 300, color: const Color.fromARGB(255, 83, 40, 27),),
          Container(height: 200, width: 200, color: const Color.fromARGB(255, 83, 79, 78),),
        ],)*/
        /*GridView.builder(
          itemCount: 64,
          gridDelegate: 
          //How many columns you want in each row
         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8), 
         itemBuilder: (context, index) => Container(
          color: Colors.deepOrange,
          margin: EdgeInsets.all(1) ,

         ))*/
       /* ListView.builder(itemCount: names.length, itemBuilder: (context, index) => ListTile(
          title: Text(names[index]),
        ) 
        ,)
        /* ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container( height: 400, width: 300, color: const Color.fromARGB(255, 5, 146, 164),),
            Container( height: 400, width: 300, color: const Color.fromARGB(255, 7, 120, 134)),
            Container( height: 400, width: 300, color: const Color.fromARGB(255, 6, 114, 128)),
            
          ],*/
        ) ,*/
         /*Center(
          child: Container(
            height: 300,
            width: 300,
           decoration: BoxDecoration(
             color: const Color.fromARGB(255, 6, 105, 2),
            borderRadius: BorderRadius.circular(20)
           ),
           
            padding: EdgeInsets.all(25),
              child: Icon(Icons.holiday_village,
              color: const Color.fromARGB(255, 216, 10, 10),
              size: 70,
                
            ),
          ),
        )*/
       )*/
    );    
  }
}