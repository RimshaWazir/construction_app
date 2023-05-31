import 'package:construction_app/Chat_Screen.dart';
import 'package:construction_app/ads_buyer.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'buyer_orders.dart';
import 'buyer_page.dart';
import 'buyerpage_profile.dart';

class Bottom_Nav extends StatefulWidget {
  const Bottom_Nav({Key? key}) : super(key: key);

  @override
  State<Bottom_Nav> createState() => _Bottom_NavState();
}

class _Bottom_NavState extends State<Bottom_Nav> {
  late PageController _pageController;

  int _currentIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();

    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  List<Widget> _children = [];

  @override
  void initState() {
    _pageController = PageController();
    _children = const [
      buyer_page(),
      Buyer_Ads(),
      Buyer_Orders(),
      Chat(),
      Buyer_Profile(),
    ];

    // TODO: implement initState
    //re appear statusbar in case it was not there in the previous page
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xff502975),
        backgroundColor: Colors.white,
        items: const [
          CurvedNavigationBarItem(
            child: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.ad_units,
              color: Colors.white,
            ),
            label: 'Ads',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            label: 'Orders',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              Icons.message,
              color: Colors.white,
            ),
            label: 'Chat',
            labelStyle: TextStyle(color: Colors.white),
          ),
          CurvedNavigationBarItem(
            child: Icon(
              CupertinoIcons.person,
              color: Colors.white,
            ),
            label: 'Profile',
            labelStyle: TextStyle(color: Colors.white),
          ),
        ],
        onTap: _onItemTapped,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: _children,
      ),
    );
  }
}
