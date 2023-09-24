import 'package:flutter/material.dart';
import 'package:ostad_assignments/cart.dart';

class Product {
  final String name;
  final double price;

  Product({required this.name, required this.price});
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Product> products = [
    Product(name: "product 1", price: 10.0),
    Product(name: "Product 2", price: 20.0),
    Product(name: "product 3", price: 60.0),
    Product(name: "Product 4", price: 20.0),
    Product(name: "product 5", price: 90.0),
    Product(name: "Product 6", price: 50.0),
    Product(name: "product 7", price: 16.0),
    Product(name: "Product 8", price: 80.0),
    Product(name: "product 9", price: 60.0),
    Product(name: "Product 10", price: 20.0),
  ];

  Map<String, int> counters ={};

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Product List")),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            final counter = counters[product.name] ?? 0;


            return ListTile(
              title: Text("${product.name}"),
              subtitle: Text("\$${product.price}"),
              trailing: Column(
                children: [
                  Text("Counter : $counter"),
                  InkWell(
                    onTap: () {
                      if (counter == 5) {
                        MyAlartDialog(context);
                      }
                      setState(() {
                        if (counter < 5) {
                          counters[product.name] = counter + 1;
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
                  ),


                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shopping_cart),
        onPressed: () {
          if(counters.length > 0){
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cart(

            )));

          }
        },
      ),
    );
  }
}
