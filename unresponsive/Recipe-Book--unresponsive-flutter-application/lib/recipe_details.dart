// ignore_for_file: camel_case_types, prefer_const_constructors, must_be_immutable, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'recipes.dart';

class recipe_details extends StatefulWidget {

  Recipe incoming;
  // to get the Recipe that was clicked
  recipe_details({ Key? key, required this.incoming }) : super(key: key);

  @override
  State<recipe_details> createState() => _recipe_detailsState();
}

class _recipe_detailsState extends State<recipe_details> {

  late Recipe dish = widget.incoming;
  //  to avoid writing "widget.incoming" again & again
  late int slider_Val = dish.servings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(dish.name), centerTitle: true, backgroundColor: Colors.teal.shade700),
      body: Column(
        children: [
          Image.asset(dish.imgPath),
          SizedBox(height: 10.0),
          Text('Amount of Ingredients for ${dish.name} as per servings', textAlign: TextAlign.center, style: TextStyle(fontSize: 20.0)),
          SizedBox(height: 18.0),
          Expanded(child: 
            ListView.builder(
            itemCount: dish.ingre.length,
            itemBuilder: (_ , index) {
              return Text('      ${(dish.ingre[index].quantity*slider_Val).round()}  '+dish.ingre[index].item, style: TextStyle(fontSize: 15.0));
            }
          )
          ),
          SliderTheme(

            data: SliderThemeData(
              activeTrackColor: Colors.green,
              inactiveTrackColor: Colors.red.shade300,
              thumbColor: Colors.black.withOpacity(0.80),
              overlayColor: Colors.black.withOpacity(0.15),
              activeTickMarkColor: Colors.white,
              inactiveTickMarkColor: Colors.black.withOpacity(0.65),
              valueIndicatorColor: Colors.teal.shade700
            ),

            child: Slider(
              onChanged: (new_value){
                slider_Val = new_value.toInt();
                setState(() {});
              },
              value: slider_Val.toDouble(),
              divisions: 9,
              min: dish.servings.toDouble(),
              max: dish.servings.toDouble()*10,
              label: slider_Val.toString(),              
            ),
          ),
        ]
      )
    );
  }
}