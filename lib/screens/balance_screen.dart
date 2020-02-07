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
      child: Column(
        children: <Widget>[
          _infoCard()
        ]
      )
    );
  }

  Widget _infoCard() {
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(24.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(10.0),
                child: Container(
                  color: Colors.white,
                  height: height/4,
                  // decoration: new BoxDecoration(
                  //   border: new Border.all(width: 1.0, color: Color(0xFFFF000000)),
                  //   borderRadius: new BorderRadius.circular(10.0),
                  // ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('data')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}