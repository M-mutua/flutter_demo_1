import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String userGreet = "";
 void greetUser(){
  setState(() {
  userGreet = "Hello," + textControler.text;
  });
 }
  //Text Editing Controler to fget what the user has typed in
  TextEditingController textControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 143, 178),
      appBar: AppBar(title: Text("T E X T C O N T R O L L E R"),),
    body: Center(      
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userGreet),

            TextField(
              controller: textControler,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type Your Name Here",
              ),
            ),
            ElevatedButton(
              onPressed: greetUser, 
              child: Text("Tap"))
          ],
        ),
      ),
      ),
    );
  }
}