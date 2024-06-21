import 'package:e_commerce_app/screens/main%20Screens/categories_screens/search_categories/category_screen1.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/categoryFilterTile.dart';
import 'package:e_commerce_app/widgets/customCategory1scroll.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryScreen2 extends StatelessWidget {
  const CategoryScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
      appBar: AppBar(
        backgroundColor: appbarColor,
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        title: const Text('Women\'s tops'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            color: appbarColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomScrollListviewForCategoryScreen('T-shirt'),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomScrollListviewForCategoryScreen('Crop tops'),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomScrollListviewForCategoryScreen('Sleeveless'),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomScrollListviewForCategoryScreen('Jeans'),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomScrollListviewForCategoryScreen('Coats'),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomScrollListviewForCategoryScreen('Shoes'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.barsProgress,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Filters')
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.upDown,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Price: lowest to high')
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
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
                              child: FaIcon(
                                FontAwesomeIcons.bars,
                                size: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.60,
              shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              children: [
                // for (int i = 0; i < 8; i++)
                filterCategoryTile(
                    'picture1', '4', 'Mango', 'T-Shirt SPANISH', '1800'),
                filterCategoryTile(
                    'picture2', '4', 'Dorothy Perkins', 'Blouse', '9000'),
                filterCategoryTile(
                    'picture3', '4', 'Mango', 'T-Shirt SPANISH', '900'),
                filterCategoryTile(
                    'picture4', '4', 'Dorothy Perkins', 'Blouse', '2000'),
                filterCategoryTile(
                    'picture5', '4', 'Mango', 'T-Shirt SPANISH', '900'),
                filterCategoryTile(
                    'picture6', '4', 'Dorothy Perkins', 'Blouse', '4000'),
                filterCategoryTile('picture7', '4', 'Mango', 'Shirt', '900'),
                filterCategoryTile(
                    'picture8', '4', 'Dorothy Perkins', 'Blouse', '900'),
                filterCategoryTile('picture9', '4', 'Mango', 'T-Shirt', '900'),
                filterCategoryTile(
                    'picture14', '4', 'Dorothy Perkins', 'Blouse', '1900'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
