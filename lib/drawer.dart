import 'package:drawerbehavior/drawerbehavior.dart';
import 'package:flutter/material.dart';

class Drawer extends StatefulWidget {
  @override
  _DrawerState createState() => _DrawerState();
}

class _DrawerState extends State<Drawer> {
  final menu = Menu(items: [
    MenuItem(
      id: 'restaurant',
      title: "The Paddock",
    ),
    MenuItem(title: 'The Hero', id: 'other1'),
    MenuItem(
      id: "other2",
      title: 'Help us grow',
    ),
    MenuItem(
      id: 'other3',
      title: 'Settings',
    ),
  ]);
  var selectedMenuItemId = 'restaurant';
  var _widget = Text("1");

  Widget headerView(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
          child: Row(
            children: <Widget>[
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage("assets/flutter_logo.png"))),
              ),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "john Witch",
                      style: Theme.of(context)
                          .textTheme
                          .subhead
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      "test123@gmail.com",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle
                          .copyWith(color: Colors.white.withAlpha(200)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Divider(
          color: Colors.white.withAlpha(200),
          height: 16,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DrawerScaffold(
      percentage: 1,
      cornerRadius: 0,
      appBar: AppBarProps(title: Text("Drawer"), actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {},
        )
      ]),
      menuView: MenuView(
        menu: menu,
        headerView: headerView(context),
        animation: false,
        color: Theme.of(context).primaryColor,
        selectedItemId: selectedMenuItemId,
        onMenuItemSelected: (String itemId) {
          selectedMenuItemId = itemId;
          if (itemId == 'restaurant') {
            setState(() {
              _widget = Text("default");
            });
          }
        },
      ),
      contentView: Screen(
        contentBuilder: (context) => Center(
          child: _widget,
        ),
        color: Colors.white,
      ),
    );
  }
}
