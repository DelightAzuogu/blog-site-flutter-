// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator({Key? key}) : super(key: key);
  late BuildContext _context;
  late double width;
  late double mobileviewWidth = MediaQuery.of(_context).size.width - 50;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    _context = context;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return desktopView();
        } else {
          return mobileView();
        }
      },
    );
  }

  Widget desktopView() {
    return Container(
      height: 550,
      width: MediaQuery.of(_context).size.width,
      margin: const EdgeInsets.only(top: 8),
      color: const Color.fromARGB(255, 167, 166, 159),
      padding: const EdgeInsets.all(80),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: aboutSite(2),
          ),
          Expanded(
            child: navigators(2),
          ),
          Expanded(
            child: followUs(2),
          ),
          Expanded(
            child: newsLetter(2),
          ),
        ],
      ),
    );
  }

  Widget mobileView() {
    return Container(
      height: 700,
      width: MediaQuery.of(_context).size.width,
      margin: const EdgeInsets.only(top: 8),
      color: const Color.fromARGB(255, 167, 166, 159),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: aboutSite(1),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: navigators(1),
                ),
                Expanded(
                  child: followUs(1),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: newsLetter(1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget followUs(int size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "FOLLOW US",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0, top: 25),
          child: Container(
            height: 2,
            width: 250,
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: const Text(
              "Instagram",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            onTap: () => launch("https://www.instagram.com/_iamdells/"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: const Text(
              "Twitter",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            onTap: () => launch("https://twitter.com/Delight_Azuogu"),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Pinterest",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Dribble",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Facebook",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }

  Widget aboutSite(int size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "ABOUT THE SITE",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0, top: 25),
          child: Container(
            height: 2,
            width: size == 2 ? 250 : mobileviewWidth,
            color: Colors.black,
          ),
        ),
        const Text(
          "Lorem ipsum Ut velit dolor Ut labore id fugiat in ut fugiat nostrud qui in dolore commodo eu magna Duis cillum dolor officia esse mollit proident Excepteur exercitation nulla. Lorem ipsum In reprehenderit commodo aliqua irure.",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget navigators(int size) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      // verticalDirection: VerticalDirection.down,
      children: [
        const Text(
          "SITE LINKS",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0, top: 25),
          child: Container(
            height: 2,
            width: 250,
            color: Colors.black,
          ),
        ),
        //is for the navigation to Home
        Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () => Navigator.of(_context).pushNamed(
              '/',
            ),
            child: const Text(
              "Home",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        //Blog Navigation
        Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () => Navigator.of(_context).pushNamed(
              '/blog',
            ),
            child: const Text(
              "Blog",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        // navigation to About
        Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () => Navigator.of(_context).pushNamed(
              '/about',
            ),
            child: const Text(
              "About",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
        // navigation to contact
        Padding(
          padding: const EdgeInsets.all(8),
          child: InkWell(
            onTap: () => Navigator.of(_context).pushNamed(
              '/contact',
            ),
            child: const Text(
              "Contact",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget newsLetter(int v) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Text(
          "SIGN UP FOR NEWLETTER",
          style: TextStyle(
            fontSize: 16,
          ),
          textAlign: TextAlign.left,
        ),
        // the divider
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
          ),
          child: Container(
            height: 2,
            width: v == 2 ? 250 : mobileviewWidth,
            color: Colors.black,
          ),
        ),
        // the form for the email
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            child: Column(
              children: [
                //email text field
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      style: BorderStyle.solid,
                      color: Colors.black,
                    ),
                  ),
                  width: v == 2 ? 250 : mobileviewWidth,
                  height: 30,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      hintText: "Enter your mail",
                      border: InputBorder.none,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                // this is the button
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: InkWell(
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.black,
                      height: 30,
                      width: v == 2 ? 250 : mobileviewWidth,
                      child: Text(
                        "SUBCRIBE",
                        style: TextStyle(
                          fontSize: MediaQuery.of(_context).size.width > 800
                              ? 17
                              : 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
