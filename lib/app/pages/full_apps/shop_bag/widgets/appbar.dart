import 'package:flutify/app/pages/full_apps/shop_bag/shop_bag_constansts.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget SHBAppbar(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: kSHBTextColor,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(
        icon: Icon(
          Icons.search,
          color: kSHBTextColor,
        ),
        onPressed: null,
      ),
      IconButton(
        icon: Icon(
          Icons.shopping_basket,
          color: kSHBTextColor,
        ),
        onPressed: null,
      )
    ],
  );
}
