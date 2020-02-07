import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/account_screen.dart';
import './screens/balance_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: HomeScreen.id, routes: {
      HomeScreen.id: (context) => HomeScreen(),
      BalanceScreen.id: (context) => BalanceScreen(),
      AccountScreen.id: (context) => AccountScreen(),
    });
  }
}