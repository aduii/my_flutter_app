import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi primera app',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Mi primera app'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.credit_card),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: ()=>debugPrint('Click en cuenta'),
              )
            ],
          ),
          body: Container(
            child: Row(children: <Widget>[
              Text('Hello World!'),
              RaisedButton(
                child: Text('Enviar'),
                onPressed: ()=>debugPrint('Click en Enviar'),
                color: Colors.blue,
                splashColor: Colors.greenAccent,
              )
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint('Click'),
            backgroundColor: Colors.blue,
            child: Icon(Icons.add),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.print), title: Text('Imprimir')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.send), title: Text('Enviar')),
              BottomNavigationBarItem(
                  icon: Icon(Icons.adjust), title: Text('Ajustar')),
            ],
            onTap: ((int i) => debugPrint("Elemento: $i")),
          )),
    );
  }
}

//class MyApp extends StatelessWidget{
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Mi primera app',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Mi primera app'),
//        ),
//        body: Container(
//          child: Center(
//            child: Text('Hello World'),
//          ),
//        ),
//      ),
//    );
//  }
//}
