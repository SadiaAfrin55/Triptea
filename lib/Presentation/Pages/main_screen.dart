import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../Constants/Colors/app_colors.dart';
import 'Home/home_page.dart';
import 'Menu/Menu List/menu_page.dart';
import 'Order/order_page.dart';
import 'Profile/profile_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PageController _pageController=PageController();
  //for tabs
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: SizedBox.expand(
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (index) {
                setState(() => _currentIndex = index);
              },
              children: <Widget>[
                HomePage(),
                OrderPage(),
                MenuPage(),
                ProfilePage()

              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Color(0xFF26A59A),
            unselectedLabelStyle: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black),
            selectedLabelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() => _currentIndex = index);
              _pageController.jumpToPage(index);
            },
            items:  [
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/bottom-location.svg'),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/bottom-order.svg'),
                label: 'Order',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/bottom-shop.svg'),
                label: 'Shop',
              ), BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/icons/bottom-profile.svg'),
                label: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}


