import 'package:flutify/app/pages/full_apps/gallery/gallery_constants.dart';
import 'package:flutify/app/pages/full_apps/gallery/gallery_photo_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:get/get.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    List images = [
      'assets/images/login_five/background.jpg',
      'assets/images/login_seven/background.png'
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: kGMainBackgroundColor,
          appBar: AppBar(
            backgroundColor: kGMainBackgroundColor,
            title: const Text(
              "Gallery",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            elevation: 0,
            leading: Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 30,
            ),
            actions: [
              Icon(
                Icons.menu,
                color: Colors.black,
                size: 30,
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: width,
                    height: 60,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Search...",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      "Best photos for you",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  MasonryView(
                    listOfItem: images,
                    numberOfColumn: 2,
                    itemBuilder: (item) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => GalleryPhotoView(
                                item: item,
                              ),
                            ),
                          );
                        },
                        child: Image.asset(item),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
