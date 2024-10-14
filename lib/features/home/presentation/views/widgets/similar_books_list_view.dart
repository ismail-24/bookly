import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;

    return SizedBox(
      height: screenHeight * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: const CustomBookItem(
              imageUrl:
                  'https://m.media-amazon.com/images/I/71RCCl3gGuL._AC_UF894,1000_QL80_.jpg',
            ),
          );
        },
      ),
    );
  }
}
