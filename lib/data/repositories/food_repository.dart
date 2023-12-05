import 'dart:convert';
import 'package:countryinfo/data/models/recipe.dart';
import 'package:http/http.dart' as http;


class FoodRepository {
  final String apiKey = '12b98638ca4b469f9a04456d7a2b33f4';
  final String baseUrl = 'https://api.spoonacular.com/recipes/';

  Future<List<Recipe>> fetchRecipiesByType(String type) async {
    final response = await http.get(
      Uri.parse('${baseUrl}complexSearch?apiKey=$apiKey&diet=$type&offset=10'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);

      final List<Recipe> recipes = (data['results'] as List)
          .map((articleData) => Recipe.fromJSON(articleData))
          .toList();

      return recipes;
    } else {
      throw Exception('Failed to load recipies');
    }
  }
}