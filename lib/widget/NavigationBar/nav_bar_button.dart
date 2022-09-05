// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class NavBarButton extends StatefulWidget {
  final Function onPressed;

  const NavBarButton({
    required this.onPressed,
  });

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      height: 100.0,
      width: 70.0,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: InkWell(
              onTap: null,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: InkWell(
              splashColor: Colors.white,
              onTap: () {
                setState(() {
                  widget.onPressed();
                });
              },
              child: const Icon(
                Icons.menu,
                size: 30.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
