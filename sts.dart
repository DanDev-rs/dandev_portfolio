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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             FlatButton(color: Colors.cyanAccent[75],child: Text("Про меня"), onPressed: () {}),
             FlatButton(color: Colors.cyanAccent[75],child: Text("Проекты и достижения"), onPressed:() {},),
                Expanded(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(color: Colors.cyanAccent[75], child: Text("Контакты"), onPressed: () {}),
                      Spacer(),
                      Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(image: NetworkImage("https://i.ibb.co/yFRXkHx/image.jpg"),fit: BoxFit.cover)
                        ),),
                      Text(
                        "Рудых Даниил",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text("Робототехник и программист"),
                      Spacer(),
                    ]),
                ),
              Column(children: <Widget>[
                Text("")
              ],),
            ],
          ),
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

