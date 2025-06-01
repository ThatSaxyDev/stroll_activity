import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/app/home/widgets/home_prompt_selector.dart';
import 'package:stroll_activity/config/app_colors.dart';
import 'package:stroll_activity/config/app_extensions.dart';

class HomePromptWidget extends StatelessWidget {
  const HomePromptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30.w,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                radius: 29.w,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(
                  'user'.png,
                ),
              ),
            ),
            4.sbW,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                SizedBox(
                  width: 247.w,
                  child: Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Text(
                      'What is your favorite time of the day?',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        9.sbH,
        Text(
          '“Mine is definitely the peace in the morning.”',
          textAlign: TextAlign.start,
          style: TextStyle(
            color: Color(0xFFCBC9FF).withAlpha((0.7 * 255).toInt()),
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.italic,
          ),
        ),
        14.sbH,
        HomePromptSelector(),
      ],
    );
  }
}
