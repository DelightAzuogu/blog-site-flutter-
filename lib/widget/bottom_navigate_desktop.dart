// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  BottomNavigator({Key? key}) : super(key: key);
  late BuildContext _context;
  late double width;

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
      height: 200,
      width: MediaQuery.of(_context).size.width,
      margin: const EdgeInsets.only(top: 8),
      color: const Color.fromARGB(255, 167, 166, 159),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: navigators(),
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
      height: 400,
      width: MediaQuery.of(_context).size.width,
      margin: const EdgeInsets.only(top: 8),
      color: const Color.fromARGB(255, 167, 166, 159),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: navigators(),
          ),
          Expanded(
            child: newsLetter(1),
          ),
        ],
      ),
    );
  }

  Widget navigators() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      // verticalDirection: VerticalDirection.down,
      children: [
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
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
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
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget newsLetter(int v) {
    var mobileviewWidth = MediaQuery.of(_context).size.width - 50;
    return Padding(
      padding: width > 800
          ? const EdgeInsets.only(
              top: 30,
            )
          : const EdgeInsets.only(
              top: 10,
            ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "SIGN UP FOR NEWLETTER",
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
      ),
    );
  }
}
