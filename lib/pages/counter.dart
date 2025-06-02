import 'package:flutter/material.dart';
class Home extends StatefulWidget {
   const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    int _counter = 0;
   void _incrementCounter() {
    setState(() {
      _counter++;
    });
    }
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Button tapped following number of times:"),
          Text(_counter.toString(),
          style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: _incrementCounter, 
            child: Text("Tap")
            )
        ],
       ),
     ) ,
    appBar: AppBar(title: Text("Counter"),),
    );
  }
}