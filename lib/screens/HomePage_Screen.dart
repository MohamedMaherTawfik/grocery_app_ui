import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/screens/ProductDetail_Screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.only(top: 45),
                child: Center(
                  child: Icon(FontAwesomeIcons.carrot,
                      size: 29, color: Colors.orange),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 29,
                    ),
                    Text(
                      'Dhaka, Banasree',
                      style: TextStyle(fontSize: 25, color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 17,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.grey.shade300),
                  margin: EdgeInsets.symmetric(horizontal: 25),
                  child: TextField(
                    decoration: InputDecoration(
                        enabled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Search Store',
                        prefixIcon: Icon(Icons.search, size: 29)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                width: 350,
                margin: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey.shade200),
                child: Container(
                    child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      height: 100,
                      width: 115,
                      child: Image.asset(
                        'images/homepage_1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            'Fresh Vegatbles',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            'Get 25% off on your first order',
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25, right: 100),
                          child: Row(
                            children: [
                              Container(
                                height: 5,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade500,
                                    borderRadius: BorderRadius.circular(18)),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 5,
                                width: 5,
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade500,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 45,
                          child: Image.asset(
                            'images/homepage_2.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 45,
                          child: Image.asset(
                            'images/homepage_3.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Exclusive Offers',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                height: 250,
                width: 350,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 2,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/bananas.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Organic Bananas',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Text(
                                '7pcs, priceg',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, left: 25, top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '4.99\$',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 42,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/bananas.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Organic Bananas',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Text(
                                '4pcs, priceg',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, left: 25, top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '3.5\$',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 42,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best Selling',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold)),
                    Text('See All',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                height: 250,
                width: 350,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 2,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/paper2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10, right: 25),
                              child: Text(
                                'Good Paper',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                '11pcs, priceg',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, left: 25, top: 13),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '6.50\$',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 42,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/pangiful.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 35),
                              child: Text(
                                'best pangiful',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Text(
                                '10pcs, priceg',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, left: 25, top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '2.99\$',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 42,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grocires',
                        style: TextStyle(
                            fontSize: 27, fontWeight: FontWeight.bold)),
                    Text('See All',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                            color: Colors.green)),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 100,
                width: 280,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25, right: 7),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(134, 255, 205, 210),
                          borderRadius: BorderRadius.circular(15)),
                      height: 70,
                      width: 240,
                      child: Row(
                        children: [
                          Container(
                            height: 85,
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset('images/seeds.png',
                                fit: BoxFit.cover),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Pulses',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 7),
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(15)),
                      height: 50,
                      width: 200,
                      child: Row(
                        children: [
                          Container(
                            height: 85,
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset('images/rice.png',
                                fit: BoxFit.cover),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text(
                              'Rice',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                height: 250,
                width: 350,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 2,
                  ),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/meat.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 33, right: 25),
                              child: Text(
                                'Beef Bone',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Text(
                                '1Kg, priceg',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, left: 25, top: 13),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '8.99\$',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 42,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductDetail()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Image.asset(
                                'images/chicken.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 35),
                              child: Text(
                                'Broiler Chicken',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(right: 40),
                              child: Text(
                                '1Kg, priceg',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey.shade600),
                              ),
                            ),
                            Container(
                              margin:
                                  EdgeInsets.only(right: 10, left: 25, top: 15),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '6.99\$',
                                    style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 42,
                                    width: 45,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Center(
                                      child: Icon(
                                        Icons.add,
                                        size: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
