import 'package:countryinfo/data/models/recipe_item.dart';
import 'package:countryinfo/ui/pages/recipies_card_view.dart';
import 'package:flutter/material.dart';

class RecipeTypes extends StatelessWidget {
  final List<RecipeItem> items = [
    RecipeItem(name: 'All', icon: Icons.local_pizza, type: 'all'),
    RecipeItem(name: 'Vegan', icon: Icons.emoji_food_beverage, type: 'vegan'),
    RecipeItem(name: 'Pescetarian', icon: Icons.local_dining, type: 'pescetarian'),
    RecipeItem(name: 'Ketogenic', icon: Icons.star, type: 'ketogenic'),
  ];

  RecipeTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe List')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index].name),
            leading: Icon(items[index].icon),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipesCardView(type: items[index].type),
                ),
              );
            },
          );
        },
      ),
    );
  }
}


