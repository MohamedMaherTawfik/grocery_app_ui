import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/screens/Account_Screen.dart';
import 'package:grocery_app/screens/Favourites_Screen.dart';
import 'package:grocery_app/screens/HomePage_Screen.dart';
import 'package:grocery_app/screens/Mycart_Screen.dart';
import 'package:grocery_app/screens/ProductDetail_Screen.dart';

class BottomNavigator extends StatefulWidget {
  const BottomNavigator({super.key});

  @override
  State<BottomNavigator> createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {
  int selectedIndex = 0;

  List<Widget> listwidget = [
    HomePage(),
    ProductDetail(),
    Cart(),
    Favourites(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              print(value);
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            backgroundColor: Colors.amber,
            selectedIconTheme: IconThemeData(color: Colors.green),
            elevation: 10,
            selectedItemColor: Colors.green,
            selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
            iconSize: 30,
            selectedFontSize: 20,
            unselectedFontSize: 15,
            showUnselectedLabels: true,
            unselectedItemColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.shop,
                    size: 26,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    FontAwesomeIcons.searchengin,
                  ),
                  label: 'Explore'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart_checkout_outlined,
                  ),
                  label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite_outline,
                  ),
                  label: 'Favourite'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person_2_outlined,
                  ),
                  label: 'Account'),
            ]),
        body: Container(
          child: listwidget.elementAt(selectedIndex),
        ),
      ),
    );
  }
}
