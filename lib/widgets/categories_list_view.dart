import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'images/business.avif', name: 'Business'),
    CategoryModel(image: 'images/entertaiment.avif', name: 'Entertainment'),
    CategoryModel(image: 'images/general.avif', name: 'General'),
    CategoryModel(image: 'images/health.avif', name: 'Health'),
    CategoryModel(image: 'images/science.avif', name: 'Science'),
    CategoryModel(image: 'images/sports.avif', name: 'Sports'),
    CategoryModel(image: 'images/technology.jpeg', name: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
