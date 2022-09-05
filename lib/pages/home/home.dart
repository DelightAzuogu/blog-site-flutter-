// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_two/pages/home/blog_display.dart';
import 'package:project_two/pages/home/home_pagination.dart';
import 'package:project_two/widget/NavigationBar/nav_bar.dart';
import 'package:project_two/widget/bottom_navigate_desktop.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  int currentPage = 1;
  Home({Key? key, int page = 1}) : super(key: key) {
    currentPage = page;
  }

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double width;
  int slide = 1;
  late int currentPage;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    currentPage = widget.currentPage;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            welcomeSlide(),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: HomeBlogDisplay(),
            ),
            HomePagination(
              page: currentPage,
            ),
            BottomNavigator(),
          ],
        ),
      ),
    );
  }

  Widget welcomeSlide() {
    return AnimatedContainer(
      alignment: Alignment.topLeft,
      height: width > 1100 ? 800 : 700,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: slide == 1
              ? const NetworkImage(
                  "https://cdn.thewirecutter.com/wp-content/uploads/2020/04/laptops-lowres-2x1-.jpg?auto=webp&quality=75&crop=2:1&width=1024",
                )
              : slide == 2
                  ? const NetworkImage(
                      "https://cdn.vox-cdn.com/thumbor/yt2c9UR2vFIN3uNdVVMIH5dn58k=/0x0:2040x1360/1200x675/filters:focal(848x696:1174x1022)/cdn.vox-cdn.com/uploads/chorus_image/image/69807795/mchin_200705_4086_0001.0.5.jpg",
                    )
                  : const NetworkImage(
                      "https://reviewed-com-res.cloudinary.com/image/fetch/s--OPGcCdoJ--/b_white,c_limit,cs_srgb,f_auto,fl_progressive.strip_profile,g_center,q_auto,w_1200/https://reviewed-production.s3.amazonaws.com/1558119942449/Laptoporientation.jpg",
                    ),
          fit: BoxFit.cover,
        ),
      ),
      duration: const Duration(
        milliseconds: 500,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (slide == 1) slides(1),
              if (slide == 2) slides(2),
              if (slide == 3) slides(3),
              slidePagination(slide)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (width > 700) socialMedia(),
              navigation(),
            ],
          ),
        ],
      ),
    );
  }

  Widget slidePagination(int slide) {
    return Padding(
      padding: width > 800
          ? const EdgeInsets.only(left: 100, bottom: 150)
          : const EdgeInsets.only(left: 50, bottom: 100),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  this.slide = 1;
                });
              },
              child: const Text(
                "01",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (slide == 1)
            Container(
              height: 3,
              width: 30,
              color: Colors.white,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  this.slide = 2;
                });
              },
              child: const Text(
                "02",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (slide == 2)
            Container(
              height: 3,
              width: 30,
              color: Colors.white,
            ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                setState(() {
                  this.slide = 3;
                });
              },
              child: const Text(
                "03",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          if (slide == 3)
            Container(
              height: 3,
              width: 30,
              color: Colors.white,
            ),
        ],
      ),
    );
  }

  Widget slides(int slide) {
    return Container(
      padding: width > 800
          ? const EdgeInsets.only(left: 100, bottom: 150)
          : const EdgeInsets.only(left: 50, bottom: 100),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/content',
            arguments: {"title": "title"},
          );
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double size = width > 900
                ? 60.0
                : width > 610
                    ? 40.0
                    : 30;
            if (slide == 1) {
              return Text(
                "What Is Web\nDevelopment and\nWhat Is A WebSite",
                style: TextStyle(
                  overflow: TextOverflow.clip,
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            } else if (slide == 2) {
              return Text(
                "What Is App\nDevelopment",
                style: TextStyle(
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            } else {
              return Text(
                "What Is Game Development\nHow To Use Unreal Engine",
                style: TextStyle(
                  fontSize: size,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              );
            }
          },
        ),
      ),
    );
  }

  Widget socialMedia() {
    const size = 40.0;
    return Padding(
      padding: const EdgeInsets.only(right: 35, bottom: 100),
      //the side icons
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => launch("https://www.instagram.com/_iamdells/"),
              child: const Icon(
                Icons.facebook,
                size: size,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => launch("https://www.instagram.com/_iamdells/"),
              child: const Icon(
                Icons.facebook,
                size: size,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: InkWell(
              onTap: () => launch("https://www.instagram.com/_iamdells/"),
              child: const Icon(
                Icons.facebook,
                size: size,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navigation() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            setState(() {
              if (slide == 1) {
                slide = 3;
              } else {
                slide--;
              }
            });
          },
          child: Container(
            height: 50,
            width: 50,
            color: Colors.white,
            child: const Icon(Icons.arrow_back),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              if (slide == 3) {
                slide = 1;
              } else {
                slide++;
              }
            });
          },
          child: Container(
            height: 50,
            width: 50,
            color: Colors.black,
            child: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
