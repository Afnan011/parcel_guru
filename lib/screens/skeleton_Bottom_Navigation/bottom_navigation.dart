import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcel_guru/screens/home_Screen/homeScreen.dart';
import 'package:parcel_guru/screens/orders_Screen/ordersPage.dart';
import 'package:parcel_guru/screens/settings_Page/settingsPage.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bottomNavigation extends StatelessWidget {
   bottomNavigation({super.key});

  List<Widget> _buildScreens() {
    return [
      OrdersPage(),
      HomeScreen(),
      SettingsPage()

    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.cube_box),
        title: ("Orders"),
        activeColorPrimary: Color(0xfff98017),
        inactiveColorPrimary: Color(0xFFEFF1F4),
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.house_fill),
        title: ("Home"),
        activeColorPrimary: Color(0xfff98017),
        inactiveColorPrimary:Color(0xFFEFF1F4),

      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.gear_alt_fill,color: Color(0xFFEFF1F4),),
        title: ("Settings"),
        activeColorPrimary: Color(0xfff98017),
        inactiveColorPrimary:Color(0xFFEFF1F4),
      ),
    ];
  }

   PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  @override
  Widget build(BuildContext context) {
    return  PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Color(0xff2a3043), // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Color(0xff2a3043),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,

      ),
      screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style13, // Choose the nav bar style with this property.
    );
  }
}
