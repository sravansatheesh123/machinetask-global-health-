import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../main.dart';
import 'homebody.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final authController = Get.find<AuthController>();
  int _selectedIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _pages = [
    Homebody(),
    Homebody(),
    Homebody(),
    Homebody(),
    Homebody(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/profile.png'),
          ),
        ),
        title: const Text(
          "Hi, Sravan!!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notification_add_outlined,

            ),
            onPressed: () {

            },
          ),
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CurvedNavigationBar(
            key: _bottomNavigationKey,
            backgroundColor: const Color.fromARGB(255, 239, 243, 250),
            color: const Color(0xff1FBFC2),
            buttonBackgroundColor: const Color(0xff1FBFC2),
            height: 50,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: 300),
            items: [
              Image.asset(
                'assets/images/img.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/images/img_1.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/images/img_3.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/images/img_4.png',
                width: 20,
                height: 20,
              ),
              Image.asset(
                'assets/images/img_5.png',
                width: 20,
                height: 20,
              ),
            ],
            index: _selectedIndex,
            onTap: _onItemTapped,
          ),
          Container(
            color: const Color(0xff1FBFC2),
            padding: const EdgeInsets.symmetric(vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Home",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.white,
                ),
                const Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.white,
                ),
                const Text(
                  "Tail Talks",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.white,
                ),
                const Text(
                  "Diary",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.white,
                ),
                const Text(
                  "Shop",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}