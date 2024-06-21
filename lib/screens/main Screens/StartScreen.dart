import 'package:e_commerce_app/utils/colors.dart';
import 'package:e_commerce_app/utils/globalVariables.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _page = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondaryColor,
      body: Center(
        child: PageView(
          children: homeScreenItems,
          controller: pageController,
          onPageChanged: onPageChanged,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: BackgroundColor,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
                color: _page == 0 ? primaryColor : secondaryColor,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.cartShopping,
                color: _page == 1 ? primaryColor : secondaryColor,
              ),
              label: 'Shop'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.bagShopping,
                color: _page == 2 ? primaryColor : secondaryColor,
              ),
              label: 'Bag'),
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.heart,
                color: _page == 3 ? primaryColor : secondaryColor,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: FaIcon(
                Icons.person,
                color: _page == 4 ? primaryColor : secondaryColor,
              ),
              label: 'Profile'),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}
