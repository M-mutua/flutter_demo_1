import 'package:flutter/material.dart';
//import 'package:flutter_apk_2/pages/homepage.dart';
class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            SizedBox(
              height: 350.0,
              child: Image.asset('lib/images/nike.png',
              fit: BoxFit.fill),
            ),
            // title
            Text("Just Do It",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0
              ),
          ),
            SizedBox(height: 24.0),
            // sub title
            Text("Brand new sneakerz and custom kicks made with premium quality",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                color: Colors.grey
              ),
              textAlign: TextAlign.center,
          ),
            SizedBox(height: 24.0),
            //start button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/shop');
              },
            //  onTap:() =>Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage())),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.circular(8.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 150.0, right: 150.0, top: 25.0, bottom: 25.0),
                  child: Text("Shop Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0
                  ),),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}