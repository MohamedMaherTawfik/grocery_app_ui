import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

List pages = [
  {
    'icon': Icons.shopping_bag_outlined,
    'title': 'Orders',
  },
  {
    'icon': FontAwesomeIcons.idCard,
    'title': 'MyDetails',
  },
  {
    'icon': Icons.location_on_outlined,
    'title': 'Delivery Address',
  },
  {
    'icon': Icons.credit_card_outlined,
    'title': 'Payment Methods',
  },
  {
    'icon': Icons.confirmation_num_outlined,
    'title': 'Promo Code',
  },
  {
    'icon': FontAwesomeIcons.bell,
    'title': 'Notifications',
  },
  {
    'icon': Icons.help_outline,
    'title': 'Help',
  },
  {
    'icon': Icons.info_outline,
    'title': 'About',
  },
];

Widget divider() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: Divider());
}

Widget addBaseketButton() {
  return SizedBox(
    height: 130,
    width: 300,
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: Colors.grey.shade300),
        height: 120,
        width: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.logout,
                  color: Colors.green.shade700,
                  size: 28,
                )),
            Container(
              margin: EdgeInsets.only(right: 35),
              child: MaterialButton(
                onPressed: () {},
                child: Text(
                  'Log Out',
                  style: TextStyle(fontSize: 20, color: Colors.green.shade700),
                ),
              ),
            ),
            Container(),
          ],
        )),
  );
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey.shade100,
          child: ListView(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 30, top: 50),
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 35, left: 7),
                              child: Text(
                                'Mohamed Maher',
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 35),
                              child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.edit_outlined)),
                            ),
                          ],
                        ),
                        Container(
                            child: Text(
                          'm7mdellham77@gmail.com',
                          style: TextStyle(
                              fontSize: 16, color: Colors.grey.shade500),
                        ))
                      ],
                    )
                  ],
                ),
              ),
              divider(),
              Container(
                height: 605,
                child: ListView.builder(
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          child: ListTile(
                            leading: Icon(
                              pages[index]['icon'],
                              color: Colors.black,
                              size: 30,
                            ),
                            title: Text(
                              pages[index]['title'],
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            onTap: () {},
                            trailing: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ),
                        divider(),
                      ],
                    );
                  },
                ),
              ),
              addBaseketButton(),
            ],
          ),
        ),
      ),
    );
  }
}
