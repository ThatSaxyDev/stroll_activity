import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/assets.dart';
import 'package:stroll_activity/config/widgets/my_icon.dart';

class PickOptionWidget extends StatelessWidget {
  const PickOptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.5.w).copyWith(bottom: 7.h),
      child: Row(
        children: [
          Text(
            'Pick your option.\nSee who has a similar mind.',
            textAlign: TextAlign.start,
            style: TextStyle(
              height: 1.2,
              fontFamily: Font.proxima,
              color: Color(0xFFE5E5E5),
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Spacer(),
          MyIcon(
            icon: Assets.mic,
            height: 48.h,
          ),
          6.sbW,
          MyIcon(
            icon: Assets.arrowButton,
            height: 48.h,
          ),
        ],
      ),
    );
  }
}
