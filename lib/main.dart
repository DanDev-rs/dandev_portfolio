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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
             FlatButton(color: Colors.cyanAccent[75],child: Text("Про меня"), onPressed: () {}),
             FlatButton(color: Colors.cyanAccent[75],child: Text("Проекты и достижения"), onPressed:() {},),
             FlatButton(color: Colors.cyanAccent[75], child: Text("Контакты"), onPressed: () {}),
              ],
            ),

            Expanded(child: Container(child:  Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(image: NetworkImage("https://i.ibb.co/yFRXkHx/image.jpg"),fit: BoxFit.cover)
                        ),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Рудых Даниил",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text("Робототехник и программист"),
                      ],
                    ),),),
            Expanded(child: Container(color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Здесь будет информация обо мне"),
                Text("Моя почта: *rudyh.rdr@yandex.ru"),
                Text("Мой телефон: *+79041472830")
              ],
            ),
            ),),
              ],
            ),),)
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

