// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'recipes.dart';

import 'recipe_details.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipes Cook Book'), centerTitle: true, backgroundColor: Colors.deepPurple),
      body: ListView.builder(
        itemCount: Recipe.list.length,
        itemBuilder: (context, index){
         return tiles(context,index); 
        }
      ));
  }
}

Widget tiles(BuildContext c,int i){
  return Stack(
    children: [Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
          margin: EdgeInsets.only(left: 11.5, right: 11.5, top: 18.0),
          child: Column(children: [
            SizedBox(width: double.infinity, height: 250.0, child: Image.asset(Recipe.list[i].imgPath, fit: BoxFit.cover)),
            SizedBox(height: 9.0),
            Text(Recipe.list[i].name, style: TextStyle(fontSize: 20.0)),
            SizedBox(height: 4.0),
          ],)
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18.0, left: 11.5),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () async{
                await Future.delayed(Duration(milliseconds: 300));
                Navigator.push(c, MaterialPageRoute(builder: (c)=> recipe_details(incoming: Recipe.list[i])));
              },
              splashColor: Colors.amberAccent,
                child: Container(height: 287.0, width: 337),
              ),
            ),
          ),
    ]);
}