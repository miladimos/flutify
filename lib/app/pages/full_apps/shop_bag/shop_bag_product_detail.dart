import 'package:flutify/app/pages/full_apps/shop_bag/models/shop_bag_product_model.dart';
import 'package:flutify/app/pages/full_apps/shop_bag/widgets/cart_counter.dart';
import 'package:flutify/app/pages/full_apps/shop_bag/widgets/color_selectable.dart';
import 'package:flutter/material.dart';

class ShopBagProductDetail extends StatelessWidget {
  final SHBProductModel product;

  ShopBagProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: product.color,
            child: Column(
              children: [
                SizedBox(
                  height: size.height,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        margin: EdgeInsets.only(top: size.height * 0.3),
                        padding: EdgeInsets.only(
                          left: 20,
                          right: 20,
                          top: size.height * 0.12,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text("Color"),
                                      Row(
                                        children: [
                                          ColorSelectable(
                                            color: Colors.amberAccent,
                                          ),
                                          ColorSelectable(
                                            color: Colors.red,
                                            isSelected: true,
                                          ),
                                          ColorSelectable(
                                            color: Colors.greenAccent,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text("Size"),
                                      Text(
                                        "12 cm",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                product.description,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: IconButton(
                                      icon: const Icon(
                                        Icons.favorite,
                                        size: 45,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                  CartCounter(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              product.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "price",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      product.price.toString(),
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Hero(
                                    tag: product.id,
                                    child: Image.asset(product.image, fit: BoxFit.fill,),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
