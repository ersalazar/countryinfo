

import 'package:countryinfo/data/models/article.dart';
import 'package:countryinfo/data/repositories/news_repository.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final NewsRepository _newsRepository = NewsRepository();
  late List<Article> _articles = [];

  @override
  void initState() {
    super.initState();
    _loadNewsArticles();
  }

  Future<void> _loadNewsArticles() async {
    final articles = await _newsRepository.fetchNewsArticles();
    print(articles);

    setState(() {
      _articles = articles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Dashboard'),
      ),
      body: _articles.isNotEmpty // Check if _articles is not empty
          ? ListView.builder(
              itemCount: _articles.length,
              itemBuilder: (context, index) {
                final article = _articles[index];
                return ListTile(
                  title: Text(article.title),
                  subtitle: Text(article.description),
                  // onTap: () => _openArticle(article.url),
                );
              },
            )
          : const CircularProgressIndicator(),
    );
  }
}
