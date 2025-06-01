

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({
    required this.icon,
    this.height,
    this.width,
    this.color,
    this.onTap,
    super.key,
  });

  final String icon;
  final double? height;
  final double? width;
  final Color? color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: SvgPicture.asset(
        icon,
        // ignore: deprecated_member_use
        color: color,
        height: height ?? 24.h,
        width: width,
      ),
    );
  }
}
