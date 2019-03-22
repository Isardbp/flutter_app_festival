import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Example text title"),
      ),
      body: Container(
        //child: Dashboard,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("UserName"),
              accountEmail: Text("usermail@email.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor:
                Theme.of(context).platform == TargetPlatform.iOS
                    ? Colors.teal
                    : Colors.white,
                child: Text(
                    "UN",
                    style:TextStyle(fontSize: 40.0)
                ),
              ),
            ),
            ListTile(
              title: Text("Programació"),
              onTap: () {
                Navigator.of(context).pop();
                //Navigator.of(context).push();
              },
            ),
            ListTile(
              title: Text("Artistes"),
              onTap: () {
                Navigator.of(context).pop();
                //Navigator.of(context).push();
              },
            ),
            ListTile(
              title: Text("Espais"),
              onTap: () {
                Navigator.of(context).pop();
                //Navigator.of(context).push();
              },
            ),
            ListTile(
              title: Text("Com arrabar-hi"),
              onTap: () {
                Navigator.of(context).pop();
                //Navigator.of(context).push();
              },
            ),
          ],
        ),
      ),
    );
  }
}


