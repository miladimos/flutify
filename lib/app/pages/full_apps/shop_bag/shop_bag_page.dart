import 'package:flutify/app/pages/full_apps/shop_bag/models/shop_bag_product_model.dart';
import 'package:flutify/app/pages/full_apps/shop_bag/shop_bag_constansts.dart';
import 'package:flutify/app/pages/full_apps/shop_bag/shop_bag_product_detail.dart';
import 'package:flutify/app/pages/full_apps/shop_bag/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ShopBagPage extends StatelessWidget {
  ShopBagPage({super.key});

  final List<String> categories = ['Hand bag', 'Foot wear', 'Jewellery'];
  final int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kSHBTextColor,
            ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: SHBAppbar(context),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Woman",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                child: SizedBox(
                  height: 30,
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          // setState(() {
                          //   selectedIndex = index;
                          // });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            children: [
                              Text(
                                categories[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: index == selectedIndex
                                      ? kSHBTextColor
                                      : kSHBTextColorLight,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                width: 30,
                                height: 2,
                                color: index == selectedIndex
                                    ? Colors.black
                                    : Colors.transparent,
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 0.75),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ShopBagProductDetail(product: products[index],)));
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: products[index].color,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Hero(
                                    tag: "{$products[index].id}",
                                    child: Image.asset(
                                        "assets/images/shop_bag/bag_2.png"),
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  products[index].title,
                                  style: TextStyle(color: kSHBTextColorLight),
                                ),
                              ),
                              Container(
                                child: Text(
                                  products[index].price.toString(),
                                  style: TextStyle(color: kSHBTextColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
