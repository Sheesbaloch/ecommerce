import 'package:e_commerce_app/screens/main%20Screens/categories_screens/search_categories/category_screen2.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/customCategory1scroll.dart';
import 'package:e_commerce_app/widgets/search_tiles1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryScreen1 extends StatelessWidget {
  const CategoryScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    // final categoryName;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 244, 244, 244),
      appBar: AppBar(
        backgroundColor: appbarColor,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.search),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  const Text(
                    'Women tops',
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
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
                                    builder: (context) => CategoryScreen2(),
                                  ),
                                );
                              },
                              child: const FaIcon(
                                FontAwesomeIcons.box,
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
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return searchTiles1('picture3', 'Pullover', 'Mango', '1500');
                }),
          )
        ],
      ),
    );
  }
}
