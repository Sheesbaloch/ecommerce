import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Padding filterCategoryTile(dynamic picture, dynamic rating, dynamic brand,
    dynamic items, dynamic price) {
  return Padding(
    padding: const EdgeInsets.all(16.0),
    child: Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                width: 162,
                height: 184,
                child: Image.asset(
                  'assets/images/${picture}.jpg',
                  fit: BoxFit.fill,
                  // height: 184,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  size: 16,
                  Icons.star,
                  color: Color(0xFFFF903B),
                ),
                Icon(
                  size: 16,
                  Icons.star,
                  color: Color(0xFFFF903B),
                ),
                Icon(
                  size: 16,
                  Icons.star,
                  color: Color(0xFFFF903B),
                ),
                Icon(
                  size: 16,
                  Icons.star,
                  color: Color(0xFFFF903B),
                ),
                Icon(
                  size: 16,
                  Icons.star,
                  color: Color(0xFFFF903B),
                ),
                Text(
                  '($rating)',
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 12,
                  ),
                )
              ],
            ),
            Text(
              '$brand',
              style: const TextStyle(
                fontSize: 11,
                color: secondaryColor,
              ),
            ),
            Text(
              '$items',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$price Rs',
              style: const TextStyle(fontSize: 16, color: Colors.red),
            ),
          ],
        ),
        Positioned(
          top: 165,
          // top: 10,
          left: 100,
          // left: 10,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 36,
              height: 36,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.red,
                  size: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
