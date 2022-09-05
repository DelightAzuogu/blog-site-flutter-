import 'package:flutter/material.dart';
import 'package:project_two/widget/NavigationBar/drop_down_buton.dart';

import 'nav_bar_item.dart';

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

class MobileNav extends StatelessWidget {
  const MobileNav({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width > 800) {
      Navigator.pop(context);
    }
    const height = 60.0;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: InkWell(
                child: const Icon(
                  Icons.cancel,
                  color: Colors.white,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50.0),
              child: Text(
                "NAVIGATE TO",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: const NavBarItem(
                    text: 'Home',
                  ),
                ),
                Container(
                  height: height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: const DropDownMenu(1),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: const DropDownMenu(2),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  height: height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: const NavBarItem(
                    text: 'About',
                  ),
                ),
                Container(
                  height: height,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  child: const NavBarItem(
                    text: 'Contact',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget DropDownButton(int button) {
    return const Material();
  }
}
