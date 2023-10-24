
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:countryinfo/data/models/article.dart';

class NewsRepository{
  final String apiKey = 'cce8ca02f34d40b88303d4005d1977a6';
  final String baseUrl = 'https://newsapi.org/v2/top-headlines';

  Future<List<Article>> fetchNewsArticles() async {
    final response  = await http.get(
      Uri.parse('$baseUrl?country=mx&apiKey=$apiKey'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<Article> articles = (data['articles'] as List)
        .map((articleData) => Article.fromJSON(articleData))
        .toList();
      return articles;
    } else {
      throw Exception('Failed to load news articles');
    }
  }
}