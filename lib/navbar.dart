import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/account_screen.dart';
import './screens/balance_screen.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
              onPressed: () => Navigator.pushNamed(context, HomeScreen.id),
              child: Icon(Icons.home, color: Colors.white)),
          FlatButton(
              onPressed: () => Navigator.pushNamed(context, BalanceScreen.id),
              child: Icon(Icons.account_balance_wallet, color: Colors.white)),
          FlatButton(
              onPressed: () => Navigator.pushNamed(context, AccountScreen.id),
              child: Icon(Icons.account_circle, color: Colors.white)),
        ],
      ),
    );
  }
}