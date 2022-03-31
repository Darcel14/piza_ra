import 'package:flutter/material.dart';

import 'recipe.dart';

class RecipeListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mes recettes'),
      ),
      body: ListView(
        children: [
          RecipeItemWidget(recipe: Recipe(
              "Pizza facile",
              "Par Dara Gael",
              "1- Faire cuire dans une poèle es lardon et les champignons.\n2- Dans un bol, versé la boite de concentré de tomate,y ajouter un demi-verre d'eau.Ensuite,Mettre un carré de sucre(pour enlever l'acidité de la tomate,une pincée de sel,du poivre et une pincée d'herbe de Provence",
              false,
              50)),
          RecipeItemWidget(recipe: Recipe(
              "Burger maison",
              "Par Atalante Archer",
              "1- Faire cuire dans une poèle es lardon et les champignons.\n2- Dans un bol, versé la boite de concentré de tomate,y ajouter un demi-verre d'eau.Ensuite,Mettre un carré de sucre(pour enlever l'acidité de la tomate,une pincée de sel,du poivre et une pincée d'herbe de Provence",
              true,
              10))
        ],
      ),
    );
  }
}

class RecipeItemWidget extends StatelessWidget {
  final Recipe recipe;
  const RecipeItemWidget({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      elevation: 8,
      child: Row(
        children: [
          Image.asset(
            'images/off.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(recipe.title,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20
                    ),),
                ),
                Text(recipe.user,style: TextStyle(
                    color: Colors.grey[500], fontSize: 16
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}