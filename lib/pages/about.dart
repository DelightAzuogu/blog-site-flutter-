// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:project_two/widget/bottom_navigate_desktop.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:project_two/widget/NavigationBar/nav_bar.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  late double upPadding;
  late double sidePadding;
  late double width;
  static const double contentFontSize = 20;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    upPadding = width > 1100
        ? 150.0
        : width > 700
            ? 50.0
            : 20;
    sidePadding = width > 1100
        ? 80
        : width > 700
            ? 50
            : 20;
    return Scaffold(
      body: SingleChildScrollView(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (width > 800) {
              return desktopView();
            } else {
              return mobileView();
            }
          },
        ),
      ),
    );
  }

  Widget desktopView() {
    return Column(
      children: [
        const NavBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: upPadding,
            vertical: sidePadding,
          ),
          child: Column(
            children: [
              welcomeImage(1),
              whatTheBlogIsAbout(1),
              whoAmI(1),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: mySkill(),
                  ),
                  Expanded(
                    child: whatIdo(),
                  ),
                ],
              ),
            ],
          ),
        ),
        BottomNavigator(),
      ],
    );
  }

  Widget mobileView() {
    return Column(
      children: [
        const NavBar(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: upPadding,
            vertical: sidePadding,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              welcomeImage(2),
              whatTheBlogIsAbout(2),
              whoAmI(2),
              whatIdo(),
              mySkill(),
            ],
          ),
        ),
        BottomNavigator(),
      ],
    );
  }

  Widget welcomeImage(int view) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: width > 1100
          ? 500
          : width > 800
              ? 400
              : 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://www.impactplus.com/hubfs/blog-image-uploads/best-about-us-pages.jpg#keepProtocol",
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget whoAmI(int side) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            side == 1 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          headingText("Who Am I?"),
          const Text(
            "My Name is Delight Ikechukwu Azuogu, I'm a 19 years old Computer Engineering Student at the European University of Lefke, TRNC. I specialise in Web Development but also really brilliant in C/C++ development as well.",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: contentFontSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget mySkill() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headingText("My Skill Sets"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "\u2022 NodeJs",
                style: TextStyle(
                  fontSize: contentFontSize,
                ),
              ),
              Text(
                "\u2022 Javascript",
                style: TextStyle(
                  fontSize: contentFontSize,
                ),
              ),
              Text(
                "\u2022 Typescript",
                style: TextStyle(
                  fontSize: contentFontSize,
                ),
              ),
              Text(
                "\u2022 C/C++",
                style: TextStyle(
                  fontSize: contentFontSize,
                ),
              ),
              Text(
                "\u2022 MySQL",
                style: TextStyle(
                  fontSize: contentFontSize,
                ),
              ),
              Text(
                "\u2022 MongoDB",
                style: TextStyle(
                  fontSize: contentFontSize,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget whatIdo() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headingText("What I Do"),
          const Text(
            "I'm a Web developer that specialise in Back-End. I'm also a skilled C/C++ developer. you can check out my Github repository to see some of my work",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: contentFontSize,
            ),
          ),
          InkWell(
            child: const Text(
              "click for my Github Repository",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: contentFontSize,
              ),
            ),
            onTap: () => launch("https://github.com/DelightAzuogu"),
          )
        ],
      ),
    );
  }

  Widget whatTheBlogIsAbout(int side) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        crossAxisAlignment:
            side == 1 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          headingText("What This Site Is For"),
          const Text(
            "This is a tech blog site ran by Delight Ikechukwu Azuogu. We post about Front-end web development with react, back-end web development with NodeJs, Git, Aws and more.",
            style: TextStyle(fontSize: contentFontSize),
          ),
        ],
      ),
    );
  }

  Widget headingText(String text) {
    return Text(
      text,
      textAlign: TextAlign.left,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
