// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:project_two/pages/Blog/blog_display.dart';
import 'package:project_two/pages/Blog/pagination.dart';
import 'package:project_two/widget/NavigationBar/nav_bar.dart';
import 'package:project_two/widget/bottom_navigate_desktop.dart';

class Blog extends StatefulWidget {
  int currentPage = 1;
  Blog({Key? key, int page = 1}) : super(key: key) {
    currentPage = page;
  }

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  late int currentPage;
  @override
  Widget build(BuildContext context) {
    currentPage = widget.currentPage;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            allView(),
          ],
        ),
      ),
    );
  }

  Widget allView() {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          BlogDisplay(page: currentPage),
          Pagination(
            page: currentPage,
          ),
          BottomNavigator(),
        ],
      ),
    );
  }
}
