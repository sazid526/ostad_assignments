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
      body: Column(
        children: [
          SizedBox(height: 5,),
          CircleAvatar(
            radius: 130,
            backgroundImage: NetworkImage("https://images.pexels.com/photos/18427797/pexels-photo-18427797/free-photo-of-light-sea-dawn-landscape.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          SizedBox(height: 10,),
          Text("John Doe",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book Doe",style: TextStyle(
              fontSize: 16,
            ),),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
              ),
              itemCount: 9,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Image.network(
                      'https://images.pexels.com/photos/18427797/pexels-photo-18427797/free-photo-of-light-sea-dawn-landscape.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,
                      height: 50,
                      width: 50,
                    ),
                  ),
                );
              },
            ),
          ),

        ],
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
      body: Row(
        children: [
          SizedBox(width: 5,),
          CircleAvatar(
            radius: 130,
            backgroundImage: NetworkImage("https://images.pexels.com/photos/18427797/pexels-photo-18427797/free-photo-of-light-sea-dawn-landscape.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              children: [
                Text("John Doe",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book Doe",style: TextStyle(
                    fontSize: 16,
                  ),),
                ),
                Expanded(
                  child: GridView.builder(
                    gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                    ),
                    itemCount: 9,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: Image.network(
                            'https://images.pexels.com/photos/18427797/pexels-photo-18427797/free-photo-of-light-sea-dawn-landscape.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',fit: BoxFit.cover,
                            height: 50,
                            width: 50,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}


