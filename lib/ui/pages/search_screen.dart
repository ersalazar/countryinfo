import 'package:countryinfo/ui/app_colors.dart';
import 'package:countryinfo/ui/pages/widgets/text_input_widget_with_title.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        backgroundColor: AppColors.primaryColor, // Use the primary color from the AppColors class
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextInputWidgetWithTitle(
                title: "Buscar",
                placeholder: "Escribe tu búsqueda aquí",
                controller: searchController,
                isPassword: false,
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Implement search functionality here
                  // You can use the value in searchController to perform a search
                },
                style: ElevatedButton.styleFrom(
                  primary: AppColors.accentColor, // Use the accent color for the button
                ),
                child: const Text("Search"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Dispose of the TextEditingController to avoid memory leaks
    searchController.dispose();
    super.dispose();
  }
}
