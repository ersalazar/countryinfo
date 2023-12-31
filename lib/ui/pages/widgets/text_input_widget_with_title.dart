import 'package:flutter/material.dart';

class TextInputWidgetWithTitle extends StatelessWidget {
  final String placeholder;
  final String title;
  final TextEditingController? controller;
  final bool isPassword;

  const TextInputWidgetWithTitle({
    super.key,
    required this.placeholder,
    required this.title,
    required this.controller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 5),
        TextFormField(
          controller: controller,
          obscureText: isPassword, // Set to true for password fields
          decoration: InputDecoration(
            hintText: placeholder,
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ],
    );
  }
}
