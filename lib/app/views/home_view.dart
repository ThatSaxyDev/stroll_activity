import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/assets.dart';
import 'package:stroll_activity/config/size_config.dart';
import 'package:stroll_activity/config/widgets/my_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        height: height(context),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            59.sbH,
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
                    height: 5.23.h,
                  ),
                ),
              ],
            ),
            2.sbH,
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
            const Spacer(),
            Row(
              children: [
                CircleAvatar(
                  radius: 30.w,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 29.w,
                    backgroundColor: Colors.white,
                  ),
                ),
                4.sbW,
                Column(
                  spacing: 12.h,
                  children: [
                    Text(
                      'Angelina, 28',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Angelina, 28',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            60.sbH,
          ],
        ),
      ),
    );
  }
}
