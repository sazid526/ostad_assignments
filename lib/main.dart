import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.green,
        title: Center(child: Text("Home",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
        actions: [
          Icon(Icons.search,),
          SizedBox(width: 13,),
        ],
        leading: Icon(Icons.home,),
        elevation: 70,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("This is mod 5 Assignment",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18
          ),)),
          SizedBox(height: 10,),
          RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "My",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.normal,
                      color: Colors.pinkAccent
                  )
                  ),
                  TextSpan(
                      text: " phone",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.blue
                  )
                  ),
                  TextSpan(
                      text: " name",style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.purpleAccent                  )
                  ),
                  TextSpan(
                      text: " Your phone name",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.normal,
                      color: Colors.orangeAccent                 )
                  ),
                ]
              )
          )
        ],
      ),
    );
  }
}


