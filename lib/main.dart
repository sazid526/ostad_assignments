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
              "My Shopping List",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(Icons.shopping_cart,size: 30,),
          )
        ],

      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Person"),
          ),
          ListTile(
            leading: Icon(Icons.call),
            title: Text("Call"),
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text("Notification"),
          ),
          ListTile(
            leading: Icon(Icons.business_center),
            title: Text("Business"),
          ),
        ],
      )
    );
  }
}
