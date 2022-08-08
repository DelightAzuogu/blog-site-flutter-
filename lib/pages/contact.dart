import 'package:flutter/material.dart';
import 'package:project_two/widget/NavigationBar/nav_bar.dart';
import 'package:project_two/widget/bottom_navigate_desktop.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  late double upPadding;
  late double sidePadding;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    upPadding = width > 1100 ? 150.0 : 50.0;
    sidePadding = width > 1100 ? 80 : 50;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            LayoutBuilder(
              builder: (context, constraints) {
                if (width < 800) {
                  return moblieView();
                } else {
                  return desktopView();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

// this is the mobile view
  Widget moblieView() {
    return Column(
      children: [
        welcomeImage(2),
        mobileInformation(),
        BottomNavigator(),
      ],
    );
  }

  Widget mobileInformation() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 70),
      child: Column(
        children: [
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Get In Touch With Us.",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  "Our E-mail address: azuogudells@gmail.com",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Our phone number: +905488317525",
                ),
              ),
            ],
          ),
          Column(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Text(
                  "Visit Us At",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Sen Apartment",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Gemikonagi, Lefke",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  "Turkish Republic of Northern Cyprus",
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

// this is the desktop view
  Widget desktopView() {
    return Column(
      children: [
        welcomeImage(1),
        informations(),
        BottomNavigator(),
      ],
    );
  }

  Widget informations() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 100),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Visit Us At",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Sen Apartment",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Gemikonagi, Lefke",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Turkish Republic of Northern Cyprus",
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Get In Touch With Us.",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    "Our E-mail address: azuogudells@gmail.com",
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Text(
                    "Our phone number: +905488317525",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  // this is the general welcome page
  Widget welcomeImage(int screen) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: upPadding,
        vertical: sidePadding,
      ),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: screen == 1 ? 500 : 300,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://reviewed-com-res.cloudinary.com/image/fetch/s--OPGcCdoJ--/b_white,c_limit,cs_srgb,f_auto,fl_progressive.strip_profile,g_center,q_auto,w_1200/https://reviewed-production.s3.amazonaws.com/1558119942449/Laptoporientation.jpg",
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
