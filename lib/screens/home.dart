import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_ru/screens/days.dart';

class HomePage extends StatelessWidget {
  final appTitle = 'Cardapio RU';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text(title),
        centerTitle: true,
      ),
      body: Center(child: FlatButton(
        child: Text('O que temos para hoje!', style: TextStyle(fontSize: 20.0),),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Days('Segunda-feira')),
          );
        },
      )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(1),
          children: <Widget>[
            DrawerHeader(
              child: Text('Dias da semana', style: TextStyle(fontSize: 40.0),),
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
            ),
            ListTile(
              title: Text('Segunda-feira', style: TextStyle(fontSize: 20.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Segunda-feira')),
                );
              },
            ),
            ListTile(
              title: Text('Terça-feira', style: TextStyle(fontSize: 20.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Terça-feira')),
                );
              },
            ),
            ListTile(
              title: Text('Quarta-feira', style: TextStyle(fontSize: 20.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Quarta-feira')),
                );
              },
            ),
            ListTile(
              title: Text('Quinta-feira', style: TextStyle(fontSize: 20.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Quinta-feira')),
                );
              },
            ),
            ListTile(
              title: Text('Sexta-feira', style: TextStyle(fontSize: 20.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Sexta-feira')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}