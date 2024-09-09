import 'package:flutter/material.dart';

import '../utils/colors.dart';

AppBar appBarMethod(
    {required BuildContext context,
    required String text,
    required bool isIcon,
    required bool isSearch}) {
  return AppBar(
    actions: [
      if (isSearch)
        IconButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/search');
          },
          icon: Icon(
            Icons.search,
            color: bgColor,
          ),
        )
      else
        const Padding(padding: EdgeInsets.zero),
      IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/cart');
        },
        icon: Icon(
          Icons.shopping_cart_outlined,
          color: bgColor,
        ),
      ),
    ],
    backgroundColor: primary,
    leading: isIcon
        ? IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: bgColor,
            ),
          )
        : null,
    title: Text(
      text,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
    ),
  );
}
