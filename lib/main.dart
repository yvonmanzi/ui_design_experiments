import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  String title = "Drawers";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: MyDrawer(title: this.title),
    );
  }
}

class MyDrawer extends StatelessWidget {
  final String title;

  MyDrawer({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text("Hello"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: Text("item1"),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text("item2"),
              onTap: () => Navigator.pop(context),
            )
          ],
        ),
      ),
    );
  }
}
