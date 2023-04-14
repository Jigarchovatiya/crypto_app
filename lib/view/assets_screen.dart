import 'package:flutter/material.dart';

class AssetScreen extends StatefulWidget {
  const AssetScreen({Key? key}) : super(key: key);

  @override
  State<AssetScreen> createState() => _AssetScreenState();
}

class _AssetScreenState extends State<AssetScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFEFAF4),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back_ios_sharp, size: 25, color: Colors.black),
          ),
          centerTitle: true,
          title: const Text(
            "Assets",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700, fontFamily: "CircularStd", color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(height: 10),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 7,
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        width: 1,
                        color: const Color(0xFFE1E3E6),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Image.asset(
                            "assets/Icons/Frame.png",
                            height: 30,
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "\$19,311.59",
                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, fontFamily: "CircularStd"),
                            ),
                            SizedBox(height: 5),
                            Text(
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, fontFamily: "CircularStd", color: Color(0xFF8C8A87)),
                              "Bitcoin . BTC",
                            ),
                          ],
                        ),
                        const SizedBox(width: 100),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          decoration: BoxDecoration(
                            color: const Color(0xFFEEF5ED),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            "+2.82%",
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              fontFamily: "CircularStd",
                              color: Color(0xFF58B757),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
