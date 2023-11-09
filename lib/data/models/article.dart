class Article {
  final String title;
  final String author;
  final String url;
  final String publishedAt;

  Article({
    required this.title,
    required this.author,
    required this.url,
    required this.publishedAt,
  });

  factory Article.fromJSON(Map<String, dynamic> json) {
    String author = json['author'];
    return Article(
      title: json['title'].replaceAll('- $author', '').trim(),
      author: author,
      url: json['url'],
      publishedAt: json['publishedAt'].substring(0, 10),
    );
  }
}
