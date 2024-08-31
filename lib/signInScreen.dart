import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:grocery_app/homePageScreen.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: Colors.black,
              )),
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                child: SizedBox(
                  child: Transform.rotate(
                    angle: 225 * 3.1415927 / 180,
                    child: Image.asset(
                      'images/signIn.jpeg',
                      fit: BoxFit.cover,
                      width: 600,
                      height: 374,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'Get Your Grocires\nWith Nectar',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  )),
              Container(
                margin: EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Mobile Number',
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade500),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: '',
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors
                              .grey), // Color of the bottom border when not focused
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width:
                              2.0), // Color of the bottom border when focused
                    ),
                    border: UnderlineInputBorder(),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    'or connect with social media',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade500),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 67,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade500,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 45),
                        child: Icon(
                          FontAwesomeIcons.google,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 65),
                        child: Text(
                          'Continue with Google',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  height: 67,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade900,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 45),
                        child: Icon(
                          FontAwesomeIcons.facebookF,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 65),
                        child: Text(
                          'Continue with Facebook',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
