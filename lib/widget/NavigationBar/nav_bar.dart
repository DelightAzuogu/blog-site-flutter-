// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:project_two/widget/NavigationBar/mobile_nav.dart';

import 'drop_down_buton.dart';
import 'nav_bar_button.dart';
import 'nav_bar_item.dart';

double collapsableHeight = 0.0;
Color selected = const Color(0xffffffff);
Color notSelected = const Color(0xafffffff);

List<Widget> navBarItems = [
  const NavBarItem(
    text: 'Home',
  ),
  const NavBarItem(
    text: "Blog",
  ),
  const NavBarItem(
    text: 'About',
  ),
  const NavBarItem(
    text: 'Contact',
  ),
];

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Colors.black,
          height: 70.0,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'DELIGHT.',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (width < 800.0) {
                    return NavBarButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MobileNav(),
                          ),
                        );
                      },
                    );
                  } else {
                    return Row(
                      children: const [
                        NavBarItem(
                          text: 'Home',
                        ),
                        DropDownMenu(1),
                        DropDownMenu(2),
                        NavBarItem(
                          text: 'About',
                        ),
                        NavBarItem(
                          text: 'Contact',
                        ),
                      ],
                    );
                  }
                },
              ),
              if (width > 800)
                const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
