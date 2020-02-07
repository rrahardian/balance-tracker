import 'package:flutter/material.dart';
import '../navbar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  static const String title = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        // backgroundColor: Color.fromRGBO(255, 208, 0, 10),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}