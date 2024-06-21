import 'package:e_commerce_app/screens/main%20Screens/categories_screens/search_categories/category_screen1.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

class CategorySearchScreen extends StatelessWidget {
  CategorySearchScreen({super.key});
  final List<String> entries = <String>[
    'Top',
    'Shirts & Blouses',
    'Cardigans & Sweaters',
    'Knitwear',
    'Blazers',
    'Outerwear',
    'Pants',
    'Jeans',
    'Shorts',
    'Skirts',
    'Dresses'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Categories'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: appbarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoryScreen1(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  width: double.infinity,
                  height: 48,
                  child: const Center(
                    child: Text(
                      'VIEW ALL ITEMS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Choose category',
                style: TextStyle(color: secondaryColor),
              ),
              Expanded(
                child: ListView.builder(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Text(
                          '${entries[index]}',
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
