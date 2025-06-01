import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll_activity/app/home/views/home_view.dart';
import 'package:stroll_activity/app/views/messages_view.dart';
import 'package:stroll_activity/app/views/profile_view.dart';
import 'package:stroll_activity/app/views/trending.dart';
import 'package:stroll_activity/config/app_extensions.dart';
import 'package:stroll_activity/config/size_config.dart';
import 'package:stroll_activity/config/widgets/my_icon.dart';

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({
    super.key,
    required this.baseNavState,
    required this.onSelect,
  });

  final BaseNavState baseNavState;
  final void Function(BaseNavState) onSelect;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Container(
        height: 79.h,
        width: width(context),
        decoration: BoxDecoration(
          color: Color(0xFF0F1115),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            BaseNavState.values.length,
            (index) {
              BaseNavState baseNavView = BaseNavState.values[index];
              return SizedBox(
                width: 65.w,
                child: Column(
                  children: [
                    8.sbH,
                    MyIcon(
                      icon: baseNavView.name.svg,
                      height: 44.h,
                      color: baseNavState == baseNavView ? Colors.white : null,
                    ),
                  ],
                ),
              ).onTap(onTap: () {
                onSelect(baseNavView);
              });
            },
          ),
        ),
      ),
    );
  }
}

enum BaseNavState {
  home(HomeView()),
  trending(TrendingView()),
  messages(MessagesView()),
  profile(ProfileView());

  const BaseNavState(this.view);
  final Widget view;
}
