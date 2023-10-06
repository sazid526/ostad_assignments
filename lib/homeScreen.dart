import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List ItemList = [
    {
      "title": "Pullover",
      "color": "Black",
      "size": "L",
      "price": 51,
      "photo": "assets/images/photo.png",
      "quantity": 0
    },
    {
      "title": "T-Shirt",
      "color": "Gray",
      "size": "L",
      "price": 20,
      "photo": "assets/images/photoTwo.png",
      "quantity": 0

    },
    {
      "title": "Sport Dress",
      "color": "Black",
      "size": "M",
      "price": 40,
      "photo": "assets/images/photoThree.png",
      "quantity": 0,
    },
  ];

  double totalPrice = 0;

  MySnackBar(massage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massage))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.search,color: Colors.black,),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              child: Text(
                "My Bag",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 90,
              child: ListView.builder(
                  itemCount: ItemList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 125,
                      width: double.infinity,
                      child: Card(
                          child: Container(
                        child: Row(
                          children: [
                            Image(image: AssetImage(ItemList[index]["photo"])),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          ItemList[index]["title"],
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Icon(Icons.more_vert)
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                            "Color: ${ItemList[index]["color"]}"),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text("Size: ${ItemList[index]["size"]}"),
                                      ],
                                    ),

                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Card(
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      if(ItemList[index]["quantity"] > 0){
                                                        ItemList[index]["quantity"]--;
                                                        totalPrice -= ItemList[index]["price"];
                                                      }
                                                    });
                                                  },
                                                  icon: Icon(Icons.remove)),
                                              shape: CircleBorder(),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(ItemList[index]["quantity"].toString(),style: TextStyle(
                                                fontSize: 20,
                                              ),),
                                            ),
                                            Card(
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      ItemList[index]["quantity"]++;
                                                      totalPrice += ItemList[index]["price"];
                                                    });
                                                  },
                                                  icon: Icon(Icons.add)),
                                              shape: CircleBorder(),
                                            )
                                          ],
                                        ),
                                        Text("${ItemList[index]["price"] * ItemList[index]["quantity"]}\$")
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total amount: "),
                Text("$totalPrice\$")
              ],
            ),
            SizedBox(height: 15,),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: (){
                MySnackBar("Congratuation! You Buy ${totalPrice}\$ amount of Product", context);
              },
                  child: Text("CHECK OUT"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
