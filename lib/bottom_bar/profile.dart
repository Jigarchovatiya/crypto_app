import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> statisticList = [
    "Streaks",
    "Badge",
    "Crewcoins",
    "Current League",
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
                  const Text(
                    "Profile",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "CircularStd"),
                  ),
                  const Spacer(),
                  SvgPicture.asset("assets/Icons/Setting.svg"),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFD9D9D9),
                    ),
                    child: Image.asset(
                      "assets/images/Preview.png",
                      height: 67,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            "Feranmi Ladapo",
                            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, fontFamily: "CircularStd"),
                          ),
                          Icon(Icons.verified, size: 17),
                        ],
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "@sirbenj",
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "CircularStd", color: Color(0xFF8C8A87)),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle, border: Border.all(width: 1, color: const Color(0xFFE1E3E6))),
                    child: const Icon(Icons.drive_file_rename_outline_rounded, size: 25),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Color(0xFFE1E3E6),
              thickness: 1,
            ),
            const SizedBox(width: 20),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Statistics",
                  style: TextStyle(fontFamily: "CircularStd", fontWeight: FontWeight.w700, fontSize: 14),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: 4,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10, childAspectRatio: 2.3),
                itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(10),
                  width: 165,
                  height: 65,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFE1E3E6),
                    ),
                  ),
                  child: Row(
                    children: [
                      index == 2
                          ? const SizedBox(width: 40)
                          : Image.asset(
                              "assets/images/comet.png",
                              height: 45,
                            ),
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          const Text(
                            "0",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontFamily: "CircularStd",
                              color: Color(0xFF000000),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            statisticList[index],
                            style: const TextStyle(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
