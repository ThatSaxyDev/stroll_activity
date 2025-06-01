import 'package:flutter/material.dart';
import 'package:stroll_activity/app/base_nav/widgets/bottom_nav_widget.dart';
import 'package:stroll_activity/config/app_extensions.dart';

class BaseNavView extends StatefulWidget {
  const BaseNavView({super.key});

  @override
  State<BaseNavView> createState() => _BaseNavViewState();
}

class _BaseNavViewState extends State<BaseNavView> {
  final currentView = BaseNavState.home.notifier;

  @override
  Widget build(BuildContext context) {
    return currentView.sync(
      builder: (context, value, child) => Scaffold(
        body: currentView.value.view,
        bottomNavigationBar: BottomNavWidget(
          baseNavState: currentView.value,
          onSelect: (baseNavState) {
            currentView.value = baseNavState;
          },
        ),
      ),
    );
  }
}
