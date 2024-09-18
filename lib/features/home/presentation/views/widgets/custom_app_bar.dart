import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(top: 50.h, bottom: 25.h, left: 24.w, right: 24.w),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 20.h,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.kSearchView);
            },
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22.sp,
            ),
          )
        ],
      ),
    );
  }
}
