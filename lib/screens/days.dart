import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../bd.dart';

class Days extends StatelessWidget {
  String title;
  //List<String> oq;
  Days(String title) {
    this.title = title;
  }
  @override
  Widget build(BuildContext context) {
    //oq = DateTime.now().toString().split('-');
    //oq = oq[2].split(' ');
    //print(oq[0]);
    Dados(1);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.all(1),
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Dias da semana',
                style: TextStyle(fontSize: 40.0),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text(
                'Segunda-feira',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Days("Segunda-feira")),
                );
              },
            ),
            ListTile(
              title: Text(
                'Terça-feira',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Terça-feira')),
                );
              },
            ),
            ListTile(
              title: Text(
                'Quarta-feira',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Quarta-feira')),
                );
              },
            ),
            ListTile(
              title: Text(
                'Quinta-feira',
                style: TextStyle(fontSize: 20.0),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Days('Quinta-feira')),
                );
              },
            ),
            ListTile(
              title: Text(
                'Sexta-feira',
                style: TextStyle(fontSize: 20.0),
              ),
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
      body: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 393.0,
                color: Colors.deepPurple,
                child: Stack(
                    children: [
                     /*Image.asset(
                        "lib/image/restaurant.jpg",
                        fit: BoxFit.cover,
                        height: 1000.0,
                      ),*/
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          Text("Salada", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("Alface, cenoura, beterraba e melão", style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text("Principal", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("Fejoada", style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text("Vegetariano", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("Feijoada vegetariana", style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text("Acompanhamentos", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("Arroz Branco, Arroz Itegral, Feijão Carioca", style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text("Guarnição", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("Farofa", style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text("Suco", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("Acerola", style: TextStyle(fontSize: 25,color: Colors.white),),
                          Text("Sobremesa", style: TextStyle(fontSize: 35,color: Colors.white),),
                          Text("ou Melancia ou doce", style: TextStyle(fontSize: 25,color: Colors.white),),



                        ],
                      ),

        ],
                  )

              ),
              Container(
                width: 393.0,
                child: Image.asset(
                  "lib/image/restaurant.jpg",
                  fit: BoxFit.cover,
                  height: 1000.0,
                ),
              ),
            ],
          ),


    );
  }
}

