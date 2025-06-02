import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/assets.dart';

class HomePromptSelector extends StatefulWidget {
  const HomePromptSelector({super.key});

  @override
  State<HomePromptSelector> createState() => _HomePromptSelectorState();
}

class _HomePromptSelectorState extends State<HomePromptSelector> {
  final _currentOption = (-1).notifier;

  @override
  void dispose() {
    _currentOption.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _currentOption.sync(builder: (context, value, child) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: SizedBox(
          height: 126.h,
          child: GridView.builder(
            itemCount: 4,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 166.w / 57.h,
                mainAxisSpacing: 12.h,
                crossAxisSpacing: 12.w),
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 9.h),
                decoration: BoxDecoration(
                  color: Color(0xFF232A2E),
                  borderRadius: BorderRadius.circular(12.r),
                  border: index == value
                      ? Border.all(
                          color: Color(0xFF8B88EF),
                          width: 2,
                        )
                      : null,
                ),
                child: Row(
                  spacing: 9.h,
                  children: [
                    CircleAvatar(
                      radius: 10.w,
                      backgroundColor: index == value
                          ? Color(0xFF8B88EF)
                          : Color(0xFFC4C4C4),
                      child: CircleAvatar(
                        radius: 9.w,
                        backgroundColor: index == value
                            ? Color(0xFF8B88EF)
                            : Color(0xFF232A2E),
                        child: Text(
                          (switch (index) {
                            0 => 'A',
                            1 => 'B',
                            2 => 'C',
                            _ => 'D',
                          }),
                          style: TextStyle(
                            fontFamily: Font.proxima,
                            color: Color(0xFFC4C4C4),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(
                        (switch (index) {
                          0 => 'The peace in the early mornings',
                          1 => 'The magical golden hours',
                          2 => 'Wind-down time after dinners',
                          _ => 'The serenity past midnight',
                        }),
                        style: TextStyle(
                          height: 1.05,
                          fontFamily: Font.proxima,
                          color: index == value
                              ? Color(0xFFF5F5F5)
                              : Color(0xFFC4C4C4),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ).onTap(onTap: () {
                _currentOption.value = index;
              });
            },
          ),
        ),
      );
    });
  }
}
