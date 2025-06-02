import 'package:flutter/material.dart';
class First extends StatelessWidget {
       const First({super.key});
   /*final int _selectedIndex = 0;
   final List _page = [
    Home(),
    Profile(),
    Settings()
   ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      appBar: AppBar(title: Text("First Page"),),
      /*body: _page[_selectedIndex],*/
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home",
         ),
          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: "Profile",
         ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Settings",
         ),
         
        ],
        ),
      drawer: Drawer(
        backgroundColor: Colors.purple[100],
        child: Column(
          children: [
            DrawerHeader(child: Icon(Icons.account_circle_sharp,
              size: 48,

            )
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("C O U N T E R"),
              onTap:() {
                Navigator.pop(context);
                 Navigator.pushNamed(context, '/home');
              }  ,
            ),
             ListTile(
              leading: Icon(Icons.search),
              title: Text("S E A R C H"),
              onTap: () {
                Navigator.pop(context);
                
              },
            ),
             ListTile(
              leading: Icon(Icons.person),
              title: Text("T E X T C O N T R O L"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("T O  D O  A P P"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/todoapp');
              },
            )
          ],
        ),
       ),
      );
    
  }
}