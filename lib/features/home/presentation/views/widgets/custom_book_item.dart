import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    // final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenWidth = MediaQuery.of(context).size.width;

    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
