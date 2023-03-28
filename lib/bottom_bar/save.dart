import 'package:flutter/material.dart';

class Save extends StatefulWidget {
  const Save({Key? key}) : super(key: key);

  @override
  State<Save> createState() => _SaveState();
}

class _SaveState extends State<Save> {
  List saveList = [
    {
      "image": "assets/Icons/Ticket Star.png",
      "label": "Challenge",
      "discount": "Earn 2.5% p.a",
      "Color": const Color(0xFF7039E1),
    },
    {
      "image": "assets/Icons/Lock.png",
      "label": "Vault",
      "discount": "Earn up to 3% p.a",
      "Color": const Color(0xFF000000),
    },
    {
      "image": "assets/Icons/Wallet.png",
      "label": "Savings Pockets",
      "discount": "Earn 2.3% p.a",
      "Color": const Color(0xFF83BA7F),
    },
    {
      "image": "assets/Icons/Star.png",
      "label": "Invites",
      "discount": "Join your crew",
      "Color": const Color(0xFFEE9136),
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFEFAF4),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    fontFamily: "CircularStd",
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: const TextSpan(
                    text: "You are saving",
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: "CircularStd",
                      color: Color(0xFF8C8A87),
                    ),
                    children: [
                      TextSpan(
                        text: " \$0.00",
                        style: TextStyle(
                          color: Color(0xFF000000),
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          fontFamily: "CircularStd",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Earn 2.5% p.a paid daily",
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
            Center(
              child: Container(
                height: 200,
                width: 345,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: const Color(0xFFE1E3E6),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: const [
                      SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Start earning daily",
                          style: TextStyle(
                            color: Color(0xFF8C8A87),
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            fontFamily: "CircularStd",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              color: Color(0xFFE1E3E6),
              thickness: 2,
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: saveList.length,
                  itemBuilder: (context, index) => Center(
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              width: 1,
                              color: const Color(0xFFE1E3E6),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: saveList[index]['Color'],
                                      ),
                                      child: Image.asset(
                                        saveList[index]['image'],
                                        height: 25,
                                        color: Colors.white,
                                      )),
                                  index == 2
                                      ? const Text(
                                          "\$1,500",
                                          style: TextStyle(
                                            color: Color(0xFF8C8A87),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "CircularStd",
                                          ),
                                        )
                                      : const Text(
                                          " 0 ",
                                          style: TextStyle(
                                            color: Color(0xFF8C8A87),
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "CircularStd",
                                          ),
                                        ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Text(
                                saveList[index]['label'],
                                style: const TextStyle(
                                  color: Color(0xFF8C8A87),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "CircularStd",
                                ),
                              ),
                              Text(
                                saveList[index]['discount'],
                                style: const TextStyle(
                                  color: Color(0xFF8C8A87),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "CircularStd",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15, childAspectRatio: 1.4)),
            ),
            const SizedBox(height: 20),
            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: Colors.black),
                child: const Text(
                  "Start Saving",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    fontFamily: "CircularStd",
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
