import 'package:flutter/material.dart';
import '../navbar.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'Home_screen';
  static const String title = 'Flutter';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}