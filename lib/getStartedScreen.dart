import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/signInScreen.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 1000,
                  width: 450,
                  child: Image.asset(
                    "images/getstarted.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 450),
                  child: Column(
                    children: [
                      Icon(
                        FontAwesomeIcons.carrot,
                        color: Color.fromARGB(255, 255, 255, 255),
                        size: 47,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'to our store',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Get Your Grocires in as fast as one hour',
                        style: TextStyle(
                            fontSize: 17, color: Colors.grey.shade500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(55),
                              color: Colors.green),
                          height: 67,
                          width: 353,
                          child: MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignInPage()));
                            },
                            child: Text(
                              'Get Started',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
