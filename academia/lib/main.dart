import 'package:academia/ui/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "academia.org",
    color: Colors.blueGrey,
    theme: ThemeData(
      primaryColor: Colors.blue,
      primarySwatch: Colors.red,
    ),
    home: const HomeTab(),
    debugShowCheckedModeBanner: false,
  ));
}
