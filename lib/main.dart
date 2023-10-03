import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationBuilder(
          builder: (context, orientation){
            if(orientation == Orientation.portrait){
              return PortraitView();
            }else{
              return LandscapeView();
            }
          }
      ),
    );
  }
}

class PortraitView extends StatelessWidget {
  const PortraitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("port"),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(
              'https://www.pexels.com/photo/double-exposure-of-a-woman-and-tagetes-flowers-13750614/',
              height: 150,
              width: 150,
            ),
          );
        },
      ),
    );
  }
}

class LandscapeView extends StatelessWidget {
  const LandscapeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("land"),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: Image.network(
              'https://www.pexels.com/photo/double-exposure-of-a-woman-and-tagetes-flowers-13750614/',
              height: 150,
              width: 150,
            ),
          );
        },
      ),
    );
  }
}


