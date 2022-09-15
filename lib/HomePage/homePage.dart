import 'package:examflutter/HomePage/widget/NavBar/DrawerList.dart';
import 'package:examflutter/HomePage/widget/bodyHome.dart';
import 'package:examflutter/HomePage/widget/bodyHomeText.dart';
import 'package:examflutter/HomePage/widget/footerSlide.dart';
import 'package:examflutter/HomePage/widget/NavBar/appNavBar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f4f4f4"),
      drawer: DrawerList(),
      appBar: appNavBar(
        isShowToolbarHome: true,
      ),
      body:
          Column( children: [
            SizedBox(
              height: 30,
            ),
            bodyHomeText(),
            SizedBox(
              height: 30,
            ),

            bodyhome(),
            SizedBox(
              height: 30,
            ),
            footerSlide()
      ]),
    );
  }
}
