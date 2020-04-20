import 'package:flutter/material.dart';

import 'home.dart';
import 'login_form.dart';

void main() => runApp(App());

/*
* class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "play",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("Play"),
          leading: IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
              size: 20.0,
              textDirection: TextDirection.rtl,
            ),
            onPressed: _searchIconPressed,
            focusColor: Colors.green,
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                "Hello Flutter! We are awesome",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.normal,
                  //fontStyle: FontStyle.italic,
                  //color: Colors.deepPurple,
                  //backgroundColor: Colors.white,
//            decoration: TextDecoration.underline,
                  decorationColor: Colors.deepPurple,
                  // decorationStyle: TextDecorationStyle.wavy,
                  wordSpacing: 10.0,
                  letterSpacing: 2.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _searchIconPressed() {
    print("hello");
  }
}

* */
class App extends StatelessWidget {
  BuildContext get context => context;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: LoginPage(),
    );
  }
}

//initialRoute: '/home',
//onGenerateRoute: _generateRoute,

/*
  * Route<dynamic> _generateRoute(RouteSettings settings) {
    //if (settings.name != '/home') return null;
    return MaterialPageRoute<void>(
      settings: settings,
      builder: (BuildContext context) {
        debugPrint("pressed!");
        return HomePage();
      },
      fullscreenDialog: true,
    );
  }
  * */

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blue[900],
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 160.0, horizontal: 20.0),
            child: Expanded(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Text(
                        "Welcome back,",
                        style: TextStyle(fontSize: 27.0, color: Colors.white70),
                      ),
                      SizedBox(
                        height: 80.0,
                      ),
                      LoginForm(),
                      SizedBox(
                        height: 16.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "FORGOT PASSWORD?",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            icon: CircleAvatar(
                              radius: 40.0,
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.arrow_forward,
                                size: 20.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("Dont' have an account?"),
                SizedBox(
                  width: 80.0,
                ),
                Text(
                  "SIGN UP",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
