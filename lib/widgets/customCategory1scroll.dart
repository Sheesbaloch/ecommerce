import 'package:flutter/material.dart';

Center CustomScrollListviewForCategoryScreen(dynamic headingName) {
  // final headingName;
  return Center(
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: Colors.black,
      ),
      height: 30,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 4),
        child: Text(
          '$headingName',
          style: TextStyle(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
