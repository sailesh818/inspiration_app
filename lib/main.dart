import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomePage()));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('title')),
        backgroundColor: Colors.amber,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.blue),
          onPressed: () {},
        ),
      ),

      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(decoration: BoxDecoration(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}
