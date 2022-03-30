import 'package:piza_ra/recipe.dart';
import 'package:flutter/material.dart';
import 'RecipeScreen.dart';

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
      home: RecipeScreen(recipe: Recipe(
          "Pizza facile",
          "Par Dara Gael",
          "1- Faire cuire dans une poèle es lardon et les champignons.\n2- Dans un bol, versé la boite de concentré de tomate,y ajouter un demi-verre d'eau.Ensuite,Mettre un carré de sucre(pour enlever l'acidité de la tomate,une pincée de sel,du poivre et une pincée d'herbe de Provence",
          false,
          50
      )),
    );
  }
}

