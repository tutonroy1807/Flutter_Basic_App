import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      home: HomePage(),
      darkTheme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    ); // we are work in material app
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Driver Haiyer-->"),
        // titlespacing : 20 or we are want
        centerTitle: true,
        toolbarHeight: 70,
        toolbarOpacity: 1,
      //  elevation: 10,
        backgroundColor: Colors.deepPurpleAccent,
          ),
      body: Text("MY APP"),
    );
  }
}
