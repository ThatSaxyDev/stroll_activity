import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/app/home/widgets/home_prompt_selector.dart';
import 'package:stroll_activity/config/app_colors.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/assets.dart';
import 'package:stroll_activity/config/size_config.dart';

class HomePromptWidget extends StatelessWidget {
  const HomePromptWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 27.w, right: 32.w),
          child: SizedBox(
            width: width(context),
            height: 76.h,
            child: Stack(
              children: [
                SizedBox(
                  width: 139.w,
                  height: 60.h,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 0,
                        top: 7.h,
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 4.h, bottom: 3.h, right: 8.w, left: 28.w),
                          decoration: BoxDecoration(
                            color: Color(0xFF121518).withOpacity(0.9),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Text(
                            'Angelina, 28',
                            style: TextStyle(
                              height: 1,
                              fontFamily: Font.proxima,
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      CircleAvatar(
                        radius: 30.w,
                        backgroundColor: Color(0xFF121518).withOpacity(0.9),
                        child: CircleAvatar(
                          radius: 25.w,
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage(
                            'user'.png,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    width: 247.w,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.w),
                      child: Text(
                        'What is your favorite time of the day?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          height: 1,
                          fontFamily: Font.proxima,
                          color: AppColors.primaryText,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        9.sbH,
        Text(
          '“Mine is definitely the peace in the morning.”',
          textAlign: TextAlign.start,
          style: TextStyle(
            height: 1.2,
            fontFamily: Font.proxima,
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
