import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DesktopApp());
  }
}

class Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1000)
          return DesktopApp();
        else if (constraints.maxWidth > 400)
          return TabletApp();
        else
          return MobileApp();
      },
    );
  }
}

class DesktopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FlatButton(child: Text("Про меня"), onPressed: () {}),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                //Photo goes here
                Text(
                  "Рудых Даниил",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(""),
              ])
        ]
      )
    );
  }
}

class MobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class TabletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
