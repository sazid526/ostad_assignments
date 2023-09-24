import 'package:flutter/material.dart';
import 'package:ostad_assignments/cart.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  MyAlartDialog(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Successfull!"),
            content: Text("You successfully buy product 5"),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Ok"))
            ],
          );
        });

  }

  int counter = 0;


  var product = [
    {"id": 1, "price": 25},
    {"id": 2, "price": 22},
    {"id": 3, "price": 15},
    {"id": 4, "price": 28},
    {"id": 5, "price": 13},
    {"id": 6, "price": 20},
    {"id": 7, "price": 31},
    {"id": 8, "price": 19},
    {"id": 9, "price": 22},
    {"id": 10, "price": 90},
  ];
  

  List<int> counters = [];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Product List")),
        ),
        body: ListView.builder(
          itemCount: product.length,
            itemBuilder: (context, index){
              return ListTile(
                title: Text("Product ${product[index]["id"]}"),
                subtitle: Text("\$${product[index]["price"]}"),
                trailing: Column(
                  children: [
                    Text("Counter : ${counter}"),
                    InkWell(
                      onTap: () {
                        if(counter > 0){
                          counters.add(counter);
                        }

                        if (counter == 5) {
                          MyAlartDialog(context);
                        }

                        setState(() {
                          if (counter < 5) {
                            counter = counter + 1;
                          }
                        });
                      },
                      child: Container(
                        height: 30,
                        width: 100,
                        child: Center(
                          child: Text(
                            "Buy Now",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              );
            }
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(

          )));
        },
      )

      ,
    );
  }
}
