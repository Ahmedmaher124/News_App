import 'package:flutter/material.dart';
import 'package:news_app/models/categoris_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });
  final List<CategorisModel> categories = const [
    CategorisModel(name: 'Business', image: 'assets/business.avif'),
    CategorisModel(name: 'General', image: 'assets/general.avif'),
    CategorisModel(name: 'Health', image: 'assets/health.avif'),
    CategorisModel(name: 'Science', image: 'assets/science.avif'),
    CategorisModel(name: 'Sports', image: 'assets/sports.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
