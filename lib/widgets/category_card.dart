import 'package:flutter/material.dart';
import 'package:news_app/models/categoris_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategorisModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(category.image),
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.orange,
        ),
        child: Center(
          child: Text(
            category.name,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
