import 'package:flutter/material.dart';

class StaticAppBar extends StatelessWidget {
  const StaticAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            '',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        body: Divider(),
      ),
    );
  }
}
