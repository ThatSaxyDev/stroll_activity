import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/assets.dart';
import 'package:stroll_activity/config/widgets/my_icon.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.h,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.strollFire,
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: MyIcon(
                icon: Assets.arrowDown,
                height: 6.5.h,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyIcon(
              icon: Assets.time,
              height: 15.h,
            ),
            3.27.sbW,
            Text(
              '22h 00m',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            9.73.sbW,
            MyIcon(
              icon: Assets.person,
              height: 15.h,
            ),
            4.24.sbW,
            Text(
              '100',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
