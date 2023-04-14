import 'package:crypto_app/view/bottom_bar/profile.dart';
import 'package:crypto_app/view/bottom_bar/save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'explore.dart';
import 'home_screen.dart';
import 'invest.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final List screenList = [
    const HomeScreen(),
    const Save(),
    const Invest(),
    const Explore(),
    const Profile(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: const Color(0xFFFEFAF4),
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/Icons/Home_fill.svg",
              ),
              icon: SvgPicture.asset("assets/Icons/Home.svg"),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/Icons/wallet_Fill.svg",
              ),
              icon: SvgPicture.asset("assets/Icons/Wallet.svg"),
              label: 'Save',
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/Icons/save_Fill.svg",
              ),
              icon: SvgPicture.asset("assets/Icons/save.svg"),
              label: 'Invest',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/Icons/Search.svg"),
              label: 'Explore',
              activeIcon: SvgPicture.asset("assets/Icons/Search_fill.svg"),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/Icons/Profile.svg",
              ),
              activeIcon: SvgPicture.asset("assets/Icons/Profile_fill.svg"),
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
      body: screenList.elementAt(selectedIndex),
    );
  }
}
