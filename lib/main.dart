import 'package:flutter/material.dart';
import 'package:player_app/home_page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.green  
    ),
  ));
}
