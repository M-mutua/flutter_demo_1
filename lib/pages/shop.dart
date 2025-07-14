import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart.dart';
import 'package:flutter_application_1/pages/shoppage.dart';
import 'package:flutter_application_1/util/gnav.dart';
class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  //controls bottom nav bar
  int _selectedIndex = 0;
  //updates 
  //when user taps the bbottom nav bar
  void navBottomBar(int p0){
    setState(() {
      _selectedIndex = p0;
    });
  }
//pages to nav
final List<Widget> pages = [
  const ShopPage(),
  const Cart()
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: (){
                  Scaffold.of(context).openDrawer();
              }, 
              icon: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(Icons.menu),
              ));
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade900,
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('lib/images/nike.png', )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Divider(color: Colors.grey.shade800,),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.home, 
                color: Colors.white
                ), 
                title: Text("Home",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.info, 
                color: Colors.white
                ), 
                title: Text("About",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: ListTile(
                leading: Icon(Icons.logout, 
                color: Colors.white
                ), 
                title: Text("Logout",
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),),
            ),

          ],
        ),
      ),
      body: pages[_selectedIndex],
      backgroundColor: Colors.grey.shade400,
      bottomNavigationBar: MyBottomNav(
        onTabChange: (p0) => navBottomBar(p0),
        )      
        );
  }
}

    
   /*lib/util/gnav.dart:19:33: Error: Expected an identifier, but got ','.
Try inserting an identifier before ','.
        onTabChange:(value) =>  ,
                                ^*/  