import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Home!"),
      ),
      body: Center(
          child: InkWell(
        child: Text("Welcome Home!"),
        onTap: () => Navigator.pop(context),
      )),
    ));
  }
}
