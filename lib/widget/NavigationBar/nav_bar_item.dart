// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:project_two/widget/NavigationBar/nav_bar.dart' as navbar;

Color selected = const Color(0xffffffff);
Color notSelected = const Color(0xafffffff);

class NavBarItem extends StatefulWidget {
  final String text;

  const NavBarItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  _NavBarItemState createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem> {
  Color color = notSelected;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          color = selected;
        });
      },
      onExit: (value) {
        setState(() {
          color = notSelected;
        });
      },
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            var page = widget.text;
            navbar.collapsableHeight = 0.0;
            if (page == "Home") {
              Navigator.of(context).pushNamed(
                '/',
              );
            } else if (page == "Contact") {
              Navigator.of(
                context,
              ).pushNamed(
                '/contact',
              );
            } else if (page == "Blog") {
              Navigator.of(context).pushNamed(
                '/blog',
              );
            } else {
              Navigator.of(context).pushNamed(
                '/about',
              );
            }
          },
          child: Container(
            height: 60.0,
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              widget.text,
              style: TextStyle(
                fontSize: 16.0,
                color: color,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
