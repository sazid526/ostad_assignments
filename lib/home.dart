import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
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

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int counter = 0;

  MyAlartDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Button pressed $counter times!"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, child: Text("Close"))
                ],
              )
          );
        }
    );
  }
  @override
  Widget build(BuildContext context) {




    return Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Count:",style: TextStyle(
                  fontSize: 23
              ),),
              Text("$counter",style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold
              ),),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: (){
                          counter++;
                          setState(() {
                            if(counter == 5){
                              MyAlartDialog(context);
                            }

                          });

                        },
                        child: Icon(Icons.add)
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(
                        onPressed: (){
                          if(counter>0){
                            counter --;
                          }


                          setState(() {
                            if(counter == 5){
                              MyAlartDialog(context);
                            }

                          });

                        },
                        child: Icon(Icons.minimize_rounded)
                    )
                  ],
                ),
              )

            ],
          ),
        )
    );
  }
}

