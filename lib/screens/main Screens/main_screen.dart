import 'package:e_commerce_app/screens/main%20Screens/categories_screens/categories_screen.dart';
import 'package:e_commerce_app/screens/main%20Screens/collections_screen.dart';
import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/widgets/main_screen_items.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbarColor,
      body: CustomScrollView(
        // physics: ScrollPhysics(parent: NeverScrollableScrollPhysics()),
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: false,
            // snap: true,
            expandedHeight: 536,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/picture1.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(),
                    flex: 2,
                  ),
                  const Text(
                    'Fashion Sale',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24),
                  ),
                  // const Text(
                  //   'Sale',
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.w900,
                  //     fontSize: 24,
                  //   ),
                  // ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CollectionsScreen(),
                        ),
                      );
                    },
                    child: Container(
                      width: 80,
                      height: 18,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: const Center(
                        child: Text(
                          'Check',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sale',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Super summer sale',
                            style: TextStyle(color: secondaryColor),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CategoriesScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture6', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture4', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture2', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture3', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture3', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture4', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItem('picture5', '20', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'New',
                            style: TextStyle(
                              fontSize: 34,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'You have never seen it before!',
                            style: TextStyle(color: secondaryColor),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'View all',
                          style: TextStyle(
                            color: secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItemNew('picture2', 'New', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItemNew('picture2', 'New', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItemNew('picture2', 'New', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItemNew('picture2', 'New', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItemNew('picture2', 'New', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MainItemNew('picture2', 'New', '10',
                              'Dorothy Perkins', 'Evening Dress', '1500'),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
