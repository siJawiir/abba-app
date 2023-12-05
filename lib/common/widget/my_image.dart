import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class MyZoomableImage extends StatelessWidget {
  final File? selectedImage;

  const MyZoomableImage({super.key, required this.selectedImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                MyZoomableImageGallery(selectedImage: selectedImage),
          ),
        );
      },
      child: Image.file(selectedImage!, height: 120.0),
    );
  }
}

class MyZoomableImageGallery extends StatelessWidget {
  final File? selectedImage;

  const MyZoomableImageGallery({super.key, required this.selectedImage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.8),
      body: Stack(
        children: [
          Positioned.fill(
            child: PhotoViewGallery.builder(
              itemCount: 1,
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: FileImage(selectedImage!),
                  minScale: PhotoViewComputedScale.contained * 0.8,
                  maxScale: PhotoViewComputedScale.covered * 2,
                );
              },
              scrollPhysics: const BouncingScrollPhysics(),
              backgroundDecoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              pageController: PageController(),
            ),
          ),
          Positioned(
            top: 30.0,
            right: 20.0,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
