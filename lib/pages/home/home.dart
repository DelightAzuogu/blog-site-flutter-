import 'package:flutter/material.dart';
import 'package:project_two/pages/home/blog_display.dart';
import 'package:project_two/widget/NavigationBar/nav_bar.dart';
import 'package:project_two/widget/bottom_navigate_desktop.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            welcomeSlide(),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Recent Posts",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            HomeBlogDisplay(),
            BottomNavigator(),
          ],
        ),
      ),
    );
  }

  Widget welcomeSlide() {
    return AnimatedContainer(
      alignment: Alignment.topLeft,
      height: width > 1100
          ? 600
          : width > 900
              ? 500
              : width > 700
                  ? 400
                  : 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const NetworkImage(
            "https://reviewed-com-res.cloudinary.com/image/fetch/s--OPGcCdoJ--/b_white,c_limit,cs_srgb,f_auto,fl_progressive.strip_profile,g_center,q_auto,w_1200/https://reviewed-production.s3.amazonaws.com/1558119942449/Laptoporientation.jpg",
          ),
          fit: width > 800 ? BoxFit.fill : BoxFit.cover,
        ),
      ),
      duration: const Duration(
        milliseconds: 500,
      ),
    );
  }

  Widget welcomeText(String text) {
    double fontSize = MediaQuery.of(context).size.width > 1100
        ? 100
        : MediaQuery.of(context).size.width > 700
            ? 70
            : 50;
    return Text(
      text,
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
