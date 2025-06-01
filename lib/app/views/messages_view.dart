import 'package:flutter/material.dart';
import 'package:stroll_activity/config/size_config.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(context),
      width: width(context),
      color: Color(0xFF0F1115),
      child: Center(
        child: Text(
          'Messages',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
