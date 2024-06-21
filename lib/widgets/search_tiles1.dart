import 'package:e_commerce_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Stack searchTiles1(
    dynamic picture, dynamic heading, dynamic brand, dynamic price) {
  return Stack(
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
          ),
          width: double.infinity,
          height: 104,
          child: Row(
            children: [
              Container(
                width: 104,
                height: 104,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Image.asset(
                  'assets/images/${picture}.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '$heading',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      '$brand',
                      style: TextStyle(
                        fontSize: 11,
                        color: secondaryColor,
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color.fromARGB(255, 255, 185, 73),
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color.fromARGB(255, 255, 185, 73),
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color.fromARGB(255, 255, 185, 73),
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color.fromARGB(255, 255, 185, 73),
                        ),
                        Icon(
                          Icons.star,
                          size: 12,
                          color: Color.fromARGB(255, 255, 185, 73),
                        ),
                      ],
                    ),
                    Text(
                      '${price}Rs',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      Positioned(
        top: 97,
        left: 450,
        child: Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(96, 0, 0, 0),
                blurRadius: 3.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const FaIcon(
              FontAwesomeIcons.heart,
              size: 12,
              color: Colors.red,
            ),
          ),
        ),
      ),
    ],
  );
}
