import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';

Column MainItem(dynamic picture, dynamic discount, dynamic rating, String brand,
    String items, dynamic price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/${picture}.jpg',
              // scale: 9.9,
              // width: 148,
              height: 184,
              width: 148,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Positioned(
              top: 80,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '-${discount}%',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 70,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
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
            style: const TextStyle(
              color: secondaryColor,
              fontSize: 12,
            ),
          )
        ],
      ),
      Text(
        '$brand',
        style: const TextStyle(
          fontSize: 14,
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
  );
}

Column MainItemNew(dynamic picture, dynamic discount, dynamic rating,
    String brand, String items, dynamic price) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/${picture}.jpg',
              // scale: 9.9,
              // width: 148,
              height: 184,
              width: 148,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Positioned(
              top: 80,
              left: 10,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.black,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    '${discount}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 10,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 170,
            left: 70,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Padding(
                padding: EdgeInsets.all(4.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.heart_broken,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
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
            style: const TextStyle(
              color: secondaryColor,
              fontSize: 12,
            ),
          )
        ],
      ),
      Text(
        '$brand',
        style: const TextStyle(
          fontSize: 14,
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
  );
}
