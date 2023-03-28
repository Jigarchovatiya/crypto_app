import 'package:crypto_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class ChallengeScreen extends StatefulWidget {
  const ChallengeScreen({Key? key}) : super(key: key);

  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> {
  List challengeList = [
    {"border": const Color(0xFFE0593D), "Color": const Color(0xFF9C3E2A), "text": "Broke in January"},
    {
      "border": const Color(0xFF6726BC),
      "Color": const Color(0xFF471983),
      "text": "November Interest Boost",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFEFAF4),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  const SizedBox(height: 20),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios_sharp, size: 25)),
                  const Spacer(),
                  const Icon(
                    Icons.error_outline_outlined,
                    color: Color(0xFFEE9136),
                    size: 21,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Popular Challenges",
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
            const SizedBox(height: 30),
            SizedBox(
              height: 185,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 185,
                        height: 123,
                        decoration: BoxDecoration(
                          color: challengeList[index]['border'],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 1),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white,
                                          ),
                                          child: Image.asset(
                                            "assets/images/Preview.png",
                                            height: 30,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        padding: const EdgeInsets.symmetric(vertical: 9, horizontal: 3),
                                        height: 33,
                                        width: 33,
                                        decoration: BoxDecoration(color: challengeList[index]['Color'], border: Border.all(color: challengeList[index]['border'], width: 2), shape: BoxShape.circle),
                                        child: const Text(
                                          "+800",
                                          style: TextStyle(color: Colors.white, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Text(
                                '500 participants',
                                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/Icons/Activity.png",
                                    height: 13,
                                  ),
                                  const Text(
                                    ' \$900.00',
                                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        challengeList[index]['text'],
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularStd",
                        ),
                      ),
                      index == 1
                          ? const Text(
                              "Ends Feb 17, 2023",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF8C8A87),
                                fontFamily: "CircularStd",
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color(0xFFE1E3E6),
              thickness: 1,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "My Challenges",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      fontFamily: "CircularStd",
                      color: Color(0xFF000000),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE1E3E6),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: const [
                        Text(
                          "Active",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w400,
                            fontFamily: "CircularStd",
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          size: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(80),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.assetScreen);
                  debugPrint('Asset Screen ---->>');
                },
                child: Center(
                  child: Image.asset("assets/images/wallet.png", height: 95),
                ),
              ),
            ),
            const Text(
              "You don’t have any active challenges.",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                fontFamily: "CircularStd",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
