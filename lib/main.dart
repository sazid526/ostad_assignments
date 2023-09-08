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
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
              "Profile",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            )),

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/profile.png",height: 80,),
          Center(
              child: Text(
            "Jhon Doe",
            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 25,color: Colors.green),
          )),
          Center(
              child: Text(
                " Flutter Bactch 4",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20,color: Colors.blue),
              )),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
