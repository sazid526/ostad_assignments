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

  MySnackBar(massage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massage))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
              "Photo Gallery",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
            )),
      ),
      body:Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    child: Text("Welcome To My Photo Gallery!",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 7),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Search for photos...",
                      enabledBorder: OutlineInputBorder(

                      )
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            flex: 18,
            child: Container(
              height: 40,
              padding: EdgeInsets.all(10),
              child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  ),
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: (){
                          MySnackBar("Photo 0 Clicked", context);
                        },
                          child: Image.network("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80",height: 100,width: 80,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(child: Text("Photo 0",)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: (){
                            MySnackBar("Photo 1 Clicked", context);
                          },
                          child: Image.network("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80",height: 100,width: 80,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(child: Text("Photo 1",)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: (){
                            MySnackBar("Photo 2 Clicked", context);
                          },
                          child: Image.network("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80",height: 100,width: 80,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(child: Text("Photo 2",)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: (){
                            MySnackBar("Photo 3 Clicked", context);
                          },
                          child: Image.network("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80",height: 100,width: 80,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(child: Text("Photo 3",)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: (){
                            MySnackBar("Photo 4 Clicked", context);
                          },
                          child: Image.network("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80",height: 100,width: 80,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(child: Text("Photo 4",)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                          onTap: (){
                            MySnackBar("Photo 5 Clicked", context);
                          },
                          child: Image.network("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80",height: 100,width: 80,fit: BoxFit.fill,)),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Center(child: Text("Photo 5",)),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 13,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                    ),
                    title: Text("Photo 1"),
                    subtitle: Text("Photo 2"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                    ),
                    title: Text("Photo 1"),
                    subtitle: Text("Photo 2"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20.0,
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1554080353-a576cf803bda?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGhvdG98ZW58MHx8MHx8fDA%3D&w=1000&q=80"),
                    ),
                    title: Text("Photo 1"),
                    subtitle: Text("Photo 2"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14,),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: InkWell(
              onTap: (){
                MySnackBar("Photos Uploaded Successfully!", context);
              },
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue
                ),
                child: Center(child: Icon(Icons.arrow_upward,color: Colors.white,)),

              ),
            )
          )
        ],
      )
    );
  }
}
