import 'dart:convert';
import 'package:countryinfo/data/models/recipe.dart';
import 'package:countryinfo/data/repositories/food_repository.dart';
import 'package:countryinfo/ui/pages/widgets/custom_card_type_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RecipesCardView extends StatefulWidget {
  final String type;

  const RecipesCardView({super.key, required this.type});

  @override
  _RecipesCardViewState createState() => _RecipesCardViewState();
}

class _RecipesCardViewState extends State<RecipesCardView> {
  late Future<List<Recipe>> futureRecipes;

  @override
  void initState() {
    super.initState();
    futureRecipes = FoodRepository().fetchRecipiesByType(widget.type);
  }

   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipes')),
      body: FutureBuilder<List<Recipe>>(
        future: futureRecipes,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Text('No recipes available.');
          } else {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CustomCardType2(
                  title: snapshot.data![index].title,
                  imageUrl: snapshot.data![index].image,
                );
              },
            );
          }
        },
      ),
    );
  }
}

