import 'package:crypto_app/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  bool favorite = false;
  List<bool> like = [
    false,
    false,
  ];
  List exploreList = [
    {
      "border": const Color(0xFFE0593D),
      "Color": const Color(0xFF9C3E2A),
    },
    {
      "border": const Color(0xFF6726BC),
      "Color": const Color(0xFF471983),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFEFAF4),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: const Color(0xffFCEFDD),
                    ),
                    height: 50,
                    width: 340,
                    child: TextFormField(
                      autofocus: false,
                      decoration: const InputDecoration(
                        hintText: "Search here...",
                        hintStyle: TextStyle(
                          color: Color(0xFF8C8A87),
                        ),
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Top collections",
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
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 160,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 285,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xFFE1E3E6),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Image.asset(
                                        "assets/images/Preview.png",
                                        height: 27,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 15),
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(color: const Color(0xFF9C3E2A), border: Border.all(color: Colors.white, width: 2), shape: BoxShape.circle),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 35),
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(color: const Color(0xFF9C3E2A), border: Border.all(color: Colors.white, width: 2), shape: BoxShape.circle),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(left: 55),
                                      padding: const EdgeInsets.all(8),
                                      height: 33,
                                      width: 33,
                                      decoration: BoxDecoration(color: const Color(0xFF9C3E2A), border: Border.all(color: Colors.white, width: 2), shape: BoxShape.circle),
                                      child: const Text(
                                        "+5",
                                        style: TextStyle(color: Colors.white, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Adebayo Gafar: Elite Savings Pro Max',
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            const SizedBox(height: 5),
                            const Text(
                              'These are the magic assets of the next jaga...',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF8C8A87)),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const Text(
                                  "Nov 15, 2022",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularStd",
                                    color: Color(0xFF8C8A87),
                                  ),
                                ),
                                const Spacer(),
                                InkWell(
                                  onTap: () {
                                    like[index] = like[index] == true ? false : true;
                                    setState(() {});
                                  },
                                  child: like[index] == true
                                      ? const Icon(
                                          Icons.favorite,
                                          color: Color(0xff9B0000),
                                          size: 20,
                                        )
                                      : Image.asset(
                                          "assets/Icons/Heart.png",
                                          height: 20,
                                        ),
                                ),
                                const Text(
                                  "   22",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "CircularStd",
                                    color: Color(0xFF000000),
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Top collections",
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
                height: 180,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xFFE1E3E6),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 3),
                                  child: Image.asset(
                                    "assets/Icons/Frame.png",
                                    height: 30,
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                                  decoration: BoxDecoration(color: const Color(0xFFEAEBED), borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    'Crypto',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Color(0xFF8C8A87),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'BTC',
                              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 14),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Bitcoin',
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Color(0xFF8C8A87)),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "\$19,297.33",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                fontFamily: "CircularStd",
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              " 2.82%",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                fontFamily: "CircularStd",
                                color: Color(0xFF58B757),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Challenges",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        fontFamily: "CircularStd",
                        color: Color(0xFF000000),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.challengeScreen);
                        debugPrint("Challenge screen --->>");
                      },
                      child: Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "CircularStd",
                          color: Color(0xFFEE9136),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 123,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      width: 185,
                      decoration: BoxDecoration(
                        color: exploreList[index]['border'],
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
                                      decoration: BoxDecoration(color: exploreList[index]['Color'], border: Border.all(color: exploreList[index]['border'], width: 2), shape: BoxShape.circle),
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
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
