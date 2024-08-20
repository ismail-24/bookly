import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: 24.w, left: 24.w, top: 50.h, bottom: 25.h),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20.h,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 26.sp,
            ),
          )
        ],
      ),
    );
  }
}
