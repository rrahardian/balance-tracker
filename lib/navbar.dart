import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/account_screen.dart';
import './screens/balance_screen.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var currentPage = ModalRoute.of(context).settings.name;
    
    void redirectTo(current, toPath) {
      if (current != toPath) {
        Navigator.pushNamed(context, toPath);
      }
    }

    return Container(
      color: Colors.blue,
      // color: Color.fromRGBO(255, 208, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FlatButton(
              onPressed: () => redirectTo(currentPage, HomeScreen.id),
              child: Icon(Icons.home, color: Colors.white)),
          FlatButton(
              onPressed: () => redirectTo(currentPage, BalanceScreen.id),
              child: Icon(Icons.account_balance_wallet, color: Colors.white)),
          FlatButton(
              onPressed: () => redirectTo(currentPage, AccountScreen.id),
              child: Icon(Icons.account_circle, color: Colors.white)),
        ],
      ),
    );
  }
}