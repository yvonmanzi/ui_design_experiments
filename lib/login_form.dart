import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final _formState = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: true,
      key: _formState,
      child: Column(
        children: <Widget>[
          TextFormField(
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
          )
        ],
      ),
    );
  }
}
