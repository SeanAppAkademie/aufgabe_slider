import 'package:app_akademie_practice/gallery/gallery_data.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatelessWidget {
  // Konstruktor
  const ImagePage({super.key});

  // Methoden
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: buildImages(context),
    );
  }

  List<Widget> buildImages(BuildContext context) {
    List<Widget> myWidgets = [];

    for (GalleryItem galleryItem in galleryData) {
      myWidgets.add(
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          galleryItem.imagePath,
                        ),
                      ),
                      Text(galleryItem.imageTitle),
                      Text(galleryItem.imageDate),
                      Text(galleryItem.imageDescription),
                    ],
                  ),
                );
              },
            );
          },
          child: Card(
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(
                    galleryItem.imagePath,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(galleryItem.imageTitle),
              ],
            ),
          ),
        ),
      );
    }

    return myWidgets;
  }
}
