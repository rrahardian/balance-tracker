import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models.dart';
import '../navbar.dart';

class AccountScreen extends StatefulWidget {
  static const String id = 'account_screen';
  static const String title = 'Account';

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final userController = TextEditingController();
  final positionController = TextEditingController();

  var json;
  int index;
  List users = [];

  // final _formKey = GlobalKey();

  @override
  void dispose() {
    userController.dispose();
    positionController.dispose();
    super.dispose();
  }

  void _save() {
    if (userController.text.isNotEmpty && positionController.text.isNotEmpty) {
      User _user = new User();
      _user.save();
      setState(() {
        _user.user = userController.text;
        _user.position = positionController.text;
      });
      users.addAll([ _user ]);
    }
  }

  void _getAccount() {
    // Consumer
  }

  @override
  Widget build(BuildContext context) {
    
    _getAccount();

    return 
    // ChangeNotifierProvider<UserAcc>( //      <--- ChangeNotifierProvider
    //   create: (context) => UserAcc(),
    //   child: 
      Scaffold(
        appBar: AppBar(
          title: Text(AccountScreen.title),
        ),
        body: _buildForm(),
        bottomNavigationBar: Navbar(),
      // )
    );
  }

  Widget _buildForm() {
    return Center(
      child:Padding(
        padding: EdgeInsets.all(32.0),  
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: _formWidget(),
        ),
      ),
    );
  }

  _formWidget() {
    return <Widget>[
      Text('Enter user description'),
      TextField(
        controller: userController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'User'
        ),
      ),
      TextField(
        controller: positionController,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Position'
        ),
      ),
      RaisedButton(
        onPressed: () {
          _save();
        },
        child: Text('Submit')
      ),
      _listAccount(),
    ];
  }

  Widget _listAccount() {
    return Expanded(
      child: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child:Column(
                children: <Widget>[
                  Text(users[index].user),
                  Text(users[index].position),
                ],
              ),
            ),
          );
        },
      )
    );
  }
}

// class UserAcc with ChangeNotifier {

// }