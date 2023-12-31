import 'package:countryinfo/data/models/article.dart';
import 'package:countryinfo/data/repositories/news_repository.dart';
import 'package:countryinfo/ui/app_colors.dart';
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

    setState(() {
      _articles = articles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Dashboard'),
        // No need to set backgroundColor, it will inherit from the theme
      ),
      body: _articles.isNotEmpty
          ? ListView.builder(
              itemCount: _articles.length,
              itemBuilder: (context, index) {
                final article = _articles[index];
                return Column(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(
                        Icons.article,
                        // No need to set color, it will inherit from the theme
                      ),
                      title: Text(
                        article.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(article.author),
                          Text(
                            article.publishedAt,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward,
                        // No need to set color, it will inherit from the theme
                      ),
                      // onTap: () => _openArticle(article.url),
                    ),
                    const Divider(),
                  ],
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}