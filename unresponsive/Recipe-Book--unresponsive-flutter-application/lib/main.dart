// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(Recipes());
}

class Recipes extends StatelessWidget {
  const Recipes({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}