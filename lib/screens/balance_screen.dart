import 'package:flutter/material.dart';
// import '../models.dart';
import '../navbar.dart';

class BalanceScreen extends StatefulWidget {
    static const String id = 'balance_screen';
    static const String title = 'balance';

  @override
  _BalanceScreenState createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(BalanceScreen.title),
      ),
      body: _buildBalances(),
      bottomNavigationBar: Navbar(),
    );
  }

  Widget _buildBalances() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

          ],
        ),
      ),
    );
  }
}