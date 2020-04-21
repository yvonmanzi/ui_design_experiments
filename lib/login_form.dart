import 'package:flutter/material.dart';
import 'package:flutterapp/Model/model.dart';
import 'package:flutterapp/home.dart';

import 'util/util.dart';

class LoginForm extends StatelessWidget {
  final DbHelper dbHelper = DbHelper();
  final _passwordEditingController = TextEditingController();
  final _userNameEditingController = TextEditingController();
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: true,
      key: _formState,
      child: Column(
        children: <Widget>[
          TextFormField(
            controller: _userNameEditingController,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              hintText: "email",
              labelText: "EMAIL",
              filled: true,
            ),
            validator: (value) => value.isEmpty ? "wrong input" : null,
          ),
          TextFormField(
            controller: _passwordEditingController,
            style: TextStyle(
              color: Colors.white,
            ),
            showCursor: true,
            decoration: InputDecoration(
              hintText: "PASSWORD",
              labelText: "PASSWARD",
              filled: true,
            ),
            validator: (value) => value.isEmpty ? "Wrong passward" : null,
          ),
          RaisedButton(
            onPressed: () async {
              String username = _userNameEditingController.toString();
              String password = _passwordEditingController.toString();
              final user = User(username, password);
              dbHelper.insert(user);
              Future<User> usr = dbHelper.getUser();
              usr.then((usr) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomePage(usr.username)));
              }).catchError((e) => debugPrint("error happened"));
            },
          )
        ],
      ),
    );
  }

  //void _formSubmitted() async {}
}
