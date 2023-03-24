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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const Text("Hi, Feranmi", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontFamily: "CircularStd")),
                  const SizedBox(width: 2),
                  Image.asset(
                    "assets/images/Rocket.png",
                    height: 25,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xFFFCEFDD),
                    ),
                    child: const Text("Win \$100", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w700, fontFamily: "CircularStd", color: Color(0xFFEE9136))),
                  ),
                  const SizedBox(width: 10),
                  SvgPicture.asset("assets/Icons/Notification.svg"),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    width: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE1E3E6),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Funding balance",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularStd",
                                  color: Color(0xFF8C8A87),
                                ),
                              ),
                              const SizedBox(width: 5),
                              index == 0
                                  ? const Icon(
                                      Icons.visibility_outlined,
                                      size: 25,
                                    )
                                  : const SizedBox(
                                      height: 30,
                                    ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text("\$80,000.47", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, fontFamily: "CircularStd", color: Colors.black)),
                          Row(
                            children: [
                              RichText(
                                text: const TextSpan(
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
                              const SizedBox(width: 5),
                              index == 0
                                  ? const Icon(
                                      Icons.error_outline,
                                      size: 15,
                                    )
                                  : const SizedBox(),
                              const Spacer(),
                              index == 0
                                  ? Container(
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFFE1E3E6),
                                      ),
                                      padding: const EdgeInsets.all(8),
                                      child: const Icon(Icons.sticky_note_2_outlined, size: 20),
                                    )
                                  : const SizedBox(height: 40),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.black),
                                child: const Text(
                                  "Deposite",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularStd",
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  border: Border.all(color: Colors.black, width: 1),
                                ),
                                child: const Text(
                                  "Withdraw",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularStd",
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.circle_rounded,
                  size: 10,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.circle_outlined,
                  size: 10,
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.circle_outlined,
                  size: 10,
                ),
                SizedBox(height: 10),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 165,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFE1E3E6),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/comet.png",
                        height: 45,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "0",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularStd",
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            "Streaks",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularStd",
                              color: Color(0xFF8C8A87),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 165,
                  height: 65,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFE1E3E6),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/badge.png",
                        height: 38,
                      ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          SizedBox(height: 5),
                          Text(
                            "8",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularStd",
                              color: Color(0xFF000000),
                            ),
                          ),
                          Text(
                            "Badges",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularStd",
                              color: Color(0xFF8C8A87),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recent Transactions",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      fontFamily: "CircularStd",
                      color: Color(0xFF000000),
                    ),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: "CircularStd",
                      color: Color(0xFFEE9136),
                    ),
                  ),
                ],
              ),
            ),
            // SvgPicture.asset("assets/Icons/.svg", color: Colors.red),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFCEFDD),
                    ),
                    child: Image.asset(
                      "assets/Icons/Transaction.png",
                      height: 25,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Deposited \$10,000",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularStd",
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Oct 6, 2022 . 9:13AM",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularStd",
                          color: Color(0xFF8C8A87),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "\$10,000",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularStd",
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Completed",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularStd",
                          color: Color(0xFF8C8A87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFCEFDD),
                    ),
                    child: Image.asset(
                      "assets/Icons/Transaction.png",
                      height: 25,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Deposited \$10,000",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularStd",
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Oct 6, 2022 . 9:13AM",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularStd",
                          color: Color(0xFF8C8A87),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        "\$10,000",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularStd",
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Completed",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularStd",
                          color: Color(0xFF8C8A87),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Save With A Crew",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    fontFamily: "CircularStd",
                    color: Color(0xFF7C7B78),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: const Color(0xFFFEFAF4),
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: const Text(
                "Receive Money",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "CircularStd",
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.black),
              child: const Text(
                "Send Money",
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
      ),
    ));
  }
}
