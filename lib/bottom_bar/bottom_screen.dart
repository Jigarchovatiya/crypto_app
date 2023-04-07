import 'package:crypto_app/bottom_bar/explore.dart';
import 'package:crypto_app/bottom_bar/home_screen.dart';
import 'package:crypto_app/bottom_bar/profile.dart';
import 'package:crypto_app/bottom_bar/save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'invest.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final List widgetOptions = [
    const HomeScreen(),
    const Save(),
    const Invest(),
    const Explore(),
    const Profile(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFEFAF4),
        bottomNavigationBar: SizedBox(
          height: 80,
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFFFEFAF4),
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedIndex == 0 ? "assets/Icons/Home_fill.svg" : "assets/Icons/Home.svg",
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedIndex == 1 ? "assets/Icons/wallet_Fill.svg" : "assets/Icons/Wallet.svg",
                ),
                label: 'Save',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedIndex == 2 ? "assets/Icons/save_Fill.svg" : "assets/Icons/save.svg",
                ),
                label: 'Invest',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(selectedIndex == 3 ? "assets/Icons/Search_fill.svg" : "assets/Icons/Search.svg"),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  selectedIndex == 4 ? "assets/Icons/Profile_fill.svg" : "assets/Icons/Profile.svg",
                ),
                label: 'Profile',
              ),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: const Color(0xff999999),
            onTap: (value) => setState(() {
              selectedIndex = value;
            }),
          ),
        ),
        body: widgetOptions.elementAt(selectedIndex),
      ),
    );
  }
}
