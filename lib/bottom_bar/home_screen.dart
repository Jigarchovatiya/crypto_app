import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Text("Hi, Feranmi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontFamily: "CircularStd")),
                  SizedBox(width: 2),
                  Image.asset(
                    "assets/images/Rocket.png",
                    height: 25,
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFFCEFDD),
                    ),
                    child: Text("Win \$100", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, fontFamily: "CircularStd", color: Color(0xFFEE9136))),
                  ),
                  SizedBox(width: 10),
                  SvgPicture.asset("assets/Icons/Notification.svg"),
                ],
              ),
            ),
            SizedBox(width: 30),
            Container(
              padding: EdgeInsets.only(left: 20),
              height: 200,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) => Container(
                        width: 335,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            width: 1,
                            color: Color(0xFFE1E3E6),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Funding balance",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularStd",
                                    color: Color(0xFF8C8A87),
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.visibility_outlined,
                                  size: 25,
                                )
                              ],
                            ),
                            SizedBox(height: 10),
                            Text("\$80,000.47", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, fontFamily: "CircularStd", color: Colors.black)),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    text: "\$20,000 ",
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "CircularStd",
                                      color: Color(0xFF8C8A87),
                                    ),
                                    children: [
                                      TextSpan(
                                        text: "uninvested cash",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: "CircularStd",
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.error_outline,
                                  size: 15,
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xFFE1E3E6),
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: Icon(Icons.sticky_note_2_outlined),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.black),
                                  child: Text(
                                    "Deposite",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "CircularStd",
                                      color: Color(0xFFFFFFFF),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 20),
                  itemCount: 3),
            ),
          ],
        ),
      ),
    ));
  }
}
