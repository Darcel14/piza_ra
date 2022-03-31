import 'package:piza_ra/recipe.dart';
import 'package:flutter/material.dart';
import 'package:piza_ra/recipeListScreen.dart';

import 'recipeListScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: RecipeListScreen()
    );
  }
}

