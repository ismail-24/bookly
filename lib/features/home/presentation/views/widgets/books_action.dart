import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            backgroundColor: Colors.white,
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(16),
            ),
            textColor: Colors.black,
            text: '19.99\$',
          ),
          CustomButton(
            textColor: Colors.white,
            backgroundColor: Color(0xffEF8262),
            borderRadius: BorderRadius.horizontal(
              right: Radius.circular(16),
            ),
            text: 'Free Preview',
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
