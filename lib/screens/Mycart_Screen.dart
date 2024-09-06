import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

int number = 1;

List cart = [
  {
    'image': 'images/paper2.png',
    'title': 'Red Paper ',
    'subtitle': '1Kg, price',
    'icon': Icons.close,
    'price': '\$4.99',
    'Bottom': AddRemoveSection(),
  },
  {
    'image': 'images/eggs.jpg',
    'title': 'Red Eggs',
    'subtitle': '4pcs, price',
    'icon': Icons.close,
    'price': '\$1.99',
    'Bottom': AddRemoveSection(),
  },
  {
    'image': 'images/bananas.jpg',
    'title': 'Banana',
    'subtitle': '12Kg, price',
    'icon': Icons.close,
    'price': '\$3.00',
    'Bottom': AddRemoveSection(),
  },
  {
    'image': 'images/pangiful.png',
    'title': 'Ginger',
    'subtitle': '1Kg, price',
    'icon': Icons.close,
    'price': '\$2.99',
    'Bottom': AddRemoveSection(),
  },
];

double calculateTotalPrice() {
  double total = 0.0;
  for (var item in cart) {
    String priceString = item['price']; // e.g., '$4.99'
    double price = double.parse(
        priceString.replaceAll('\$', '')); // Remove $ and convert to double
    total += price;
  }
  return total;
}

Widget addBaseketButton() {
  return SizedBox(
    height: 49,
    width: 300,
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: Colors.green),
        height: 49,
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {},
              child: Text(
                'Add to Basket',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ],
        )),
  );
}

Widget divider() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 0),
      child: Divider());
}

Widget AddRemoveSection() {
  return Container(
    margin: EdgeInsets.only(top: 15, bottom: 15),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          IconButton(
            onPressed: () {
              number--;
            },
            icon: Icon(
              Icons.remove,
              size: 30,
            ),
          ),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
            child: Center(
              child: Text(
                '${number}',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              number++;
            },
            icon: Icon(
              Icons.add,
              size: 30,
              color: Colors.green,
            ),
          ),
        ]),
      ],
    ),
  );
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade100,
          centerTitle: true,
          title: Container(
            child: Text(
              'Cart',
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(0),
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.grey.shade500))),
              )),
          toolbarHeight: 110,
        ),
        body: Container(
            height: double.infinity,
            color: Colors.grey.shade100,
            child: ListView(
              children: [
                Container(
                  height: 730,
                  child: ListView.builder(
                    itemCount: cart.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 180,
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        child: ListView(
                          children: [
                            Container(
                              height: 150,
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      right: 25,
                                    ),
                                    height: 125,
                                    width: 100,
                                    child: Image.asset(
                                      cart[index]['image'],
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Container(
                                    child: Column(children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          right: 35,
                                        ),
                                        child: Column(
                                          children: [
                                            Text(
                                              cart[index]['title'],
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              cart[index]['subtitle'],
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey.shade500),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(top: 10),
                                          child: AddRemoveSection()),
                                    ]),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 100),
                                    height: 150,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(left: 15),
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.close,
                                                size: 30,
                                              )),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(cart[index]['price'],
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            divider(),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                addBaseketButton()
              ],
            )),
      ),
    );
  }
}
