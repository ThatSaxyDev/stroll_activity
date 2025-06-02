import 'package:flutter/material.dart';
import 'package:stroll_activity/app/home/widgets/home_header_widget.dart';
import 'package:stroll_activity/app/home/widgets/home_prompt_widget.dart';
import 'package:stroll_activity/app/home/widgets/pick_option_widget.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/assets.dart';
import 'package:stroll_activity/config/size_config.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          HomeHeaderWidget(),
          const Spacer(),
          HomePromptWidget(),
          12.sbH,
          PickOptionWidget(),
          86.sbH,
        ],
      ),
    );
  }
}
