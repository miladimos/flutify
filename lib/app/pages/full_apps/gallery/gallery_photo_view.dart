import 'package:flutify/app/pages/full_apps/gallery/gallery_constants.dart';
import 'package:flutter/material.dart';

class GalleryPhotoView extends StatelessWidget {
  final item;
  GalleryPhotoView({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kGMainBackgroundColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: kGMainBackgroundColor,
          centerTitle: true,
          title: const Text(
            "Photo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 550,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    item,
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
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
