import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage(this.username);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Home!"),
      ),
      body: Center(
          child: InkWell(
        child: Text("Welcome Home, $username!"),
        onTap: () => Navigator.pop(context),
      )),
    ));
  }
}
