import 'package:flutter/material.dart';
import 'package:stroll_activity/config/size_config.dart';

class TrendingView extends StatelessWidget {
  const TrendingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: width(context),
      color: Color(0xFF0F1115),
      child: Center(
        child: Text(
          'Trending',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
