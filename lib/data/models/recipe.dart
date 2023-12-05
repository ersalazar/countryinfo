class Recipe {
   final int id;
   final String title;
   final String image;
   final String? imageType;

    Recipe({
      required this.id,
      required this.title,
      required this.image,
      this.imageType,
    });

    factory Recipe.fromJSON(Map<String, dynamic> json) {
      return Recipe(
        id: json['id'],
        title: json['title'],
        image: json['image'],
      );
    }

}