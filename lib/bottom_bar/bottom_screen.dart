import 'package:crypto_app/bottom_bar/explore.dart';
import 'package:crypto_app/bottom_bar/home_screen.dart';
import 'package:crypto_app/bottom_bar/invest.dart';
import 'package:crypto_app/bottom_bar/profile.dart';
import 'package:crypto_app/bottom_bar/save.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  final List<Widget> _widgetOptions = [
    const HomeScreen(),
    const Save(),
    const Invest(),
    const Explore(),
    const Profile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

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
              icon: selectedIndex == 0
                  ? SvgPicture.asset(
                      "assets/Icons/Home_fill.svg",
                    )
                  : SvgPicture.asset(
                      "assets/Icons/Home.svg",
                    ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 1
                  ? SvgPicture.asset(
                      "assets/Icons/wallet_Fill.svg",
                    )
                  : SvgPicture.asset(
                      "assets/Icons/Wallet.svg",
                    ),
              label: 'Save',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 2
                  ? SvgPicture.asset(
                      "assets/Icons/save_Fill.svg",
                    )
                  : SvgPicture.asset(
                      "assets/Icons/save.svg",
                    ),
              label: 'Invest',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 3
                  ? SvgPicture.asset(
                      "assets/Icons/Search_fill.svg",
                    )
                  : SvgPicture.asset(
                      "assets/Icons/Search.svg",
                    ),
              label: 'Profile',
            ),
            BottomNavigationBarItem(
              icon: selectedIndex == 4
                  ? SvgPicture.asset(
                      "assets/Icons/Profile_fill.svg",
                    )
                  : SvgPicture.asset(
                      "assets/Icons/Profile.svg",
                    ),
              label: 'Profile',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: const Color(0xff999999),
          onTap: _onItemTapped,
        ),
      ),
      body: _widgetOptions.elementAt(selectedIndex),
    );
  }
}
