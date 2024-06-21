import 'package:e_commerce_app/screens/main%20Screens/categories_screens/search_categories/category_search_screen.dart';
import 'package:e_commerce_app/screens/main%20Screens/categories_screens/kids_categories_screen.dart';
import 'package:e_commerce_app/screens/main%20Screens/categories_screens/men_category_screen.dart';
import 'package:e_commerce_app/screens/main%20Screens/categories_screens/women_category_screen.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          title: const Text('Categories'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategorySearchScreen(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.search,
                ),
              ),
            ),
          ],
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Women',
            ),
            Tab(
              text: 'Men',
            ),
            Tab(
              text: 'Kids',
            ),
          ]),
        ),
        body: const TabBarView(
          children: [
            WomenCategoryScreen(),
            MenCategoryScreen(),
            KidsCategoriesScreen(),
          ],
        ),
      ),
    );
  }
}
