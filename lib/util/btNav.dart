// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers, use_key_in_widget_constructors, file_names

import 'package:flutter/material.dart';
import 'package:hostel_app/Modules/Explore/explore.dart';
import 'package:hostel_app/Modules/Notifications/noti.dart';
import 'package:hostel_app/Modules/Wishlist/whishlist.dart';

import '../Modules/Home/home.dart';
import 'colors.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'textStyles.dart';

class BTNAV extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<PersistentBottomNavBarItem> _navBarItems = [
      PersistentBottomNavBarItem(
          activeColorPrimary: PRIMARY,
          inactiveColorPrimary: BTNAVGREY,
          inactiveIcon: Image.asset(
            'assets/home.png',
            width: 30,
            height: 30,
            color: BTNAVGREY,
          ),
          icon: Image.asset(
            'assets/homeAC.png',
            width: 40,
            height: 40,
          ),
          title: "Home",
          textStyle: btBAV),
      PersistentBottomNavBarItem(
          activeColorPrimary: PRIMARY,
          inactiveColorPrimary: BTNAVGREY,
          inactiveIcon: Image.asset(
            'assets/explore.png',
            width: 30,
            height: 30,
            color: BTNAVGREY,
          ),
          icon: Image.asset(
            'assets/exploreAC.png',
            width: 40,
            height: 40,
          ),
          title: "Explore",
          textStyle: btBAV),
      PersistentBottomNavBarItem(
          activeColorPrimary: PRIMARY,
          inactiveColorPrimary: BTNAVGREY,
          inactiveIcon: Image.asset(
            'assets/heart.png',
            width: 30,
            height: 30,
            color: BTNAVGREY,
          ),
          icon: Image.asset(
            'assets/heartAC.png',
            width: 40,
            height: 40,
          ),
          title: "Whishlist",
          textStyle: btBAV),
      PersistentBottomNavBarItem(
          activeColorPrimary: PRIMARY,
          inactiveColorPrimary: BTNAVGREY,
          inactiveIcon: Image.asset(
            'assets/noti.png',
            width: 30,
            height: 30,
            color: BTNAVGREY,
          ),
          icon: Image.asset(
            'assets/notiAC.png',
            width: 40,
            height: 40,
          ),
          title: "Notification",
          textStyle: btBAV),
    ];

    return PersistentTabView(
      bottomScreenMargin: 0,
      context,
      controller: PersistentTabController(initialIndex: 0),
      screens: _buildScreens(),
      items: _navBarItems,
      confineInSafeArea: true,
      backgroundColor: BtNav,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBar: false,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: GREY, width: 2)),
      popAllScreensOnTapOfSelectedTab: true,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 50),
        curve: Curves.bounceInOut,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.bounceInOut,
        duration: Duration(milliseconds: 200),
      ),
      navBarHeight: 70,
      navBarStyle: NavBarStyle.simple,
    );
  }

  List<Widget> _buildScreens() {
    return [Home(), Explore(), Whishlist(), Noti()];
  }
}
