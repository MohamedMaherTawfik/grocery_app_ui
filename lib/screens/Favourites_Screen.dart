import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Favourites extends StatefulWidget {
  const Favourites({super.key});

  @override
  State<Favourites> createState() => _FavouritesState();
}

List favourites = [
  {
    'image': "images/sprite.png",
    'title': 'Sprit ',
    'subtitle': '325ml, price',
    'price': '\$1.50'
  },
  {
    'image': "images/diet.png",
    'title': 'Diete ',
    'subtitle': '355ml, price',
    'price': '\$1.99'
  },
  {
    'image': "images/apple.png",
    'title': ' Juice',
    'subtitle': '850ml, price',
    'price': '\$15.5'
  },
  {
    'image': "images/coke.png",
    'title': 'cocaa ',
    'subtitle': '325ml, price',
    'price': '\$4.99'
  },
  {
    'image': "images/pepsi.png",
    'title': 'pepsi ',
    'subtitle': '330ml, price',
    'price': '\$4.99'
  },
];

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Favourite',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            elevation: 0,
            toolbarHeight: 100,
          ),
          body: ListView(children: [
            Container(
              height: 760,
              child: ListView.builder(
                  itemCount: favourites.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Divider(),
                        Container(
                          height: 135,
                          child: Center(
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  // color: Colors.amber,
                                  height: 100,
                                  child: Image.asset(favourites[index]['image'],
                                      fit: BoxFit.cover),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  child: Column(
                                    children: [
                                      Text(
                                        favourites[index]['title'],
                                        style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        favourites[index]['subtitle'],
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Colors.grey.shade500,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 182),
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.arrow_forward_ios)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),
            SizedBox(
              height: 49,
              width: 300,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.green),
                  height: 49,
                  width: 200,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  )),
            ),
          ]),
        ));
  }
}
