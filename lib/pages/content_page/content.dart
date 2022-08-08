import "package:flutter/material.dart";
import 'package:project_two/pages/content_page/add_comment.dart';
import 'package:project_two/pages/content_page/body.dart';
import 'package:project_two/pages/content_page/comment.dart';
import 'package:project_two/widget/NavigationBar/nav_bar.dart';
import 'package:project_two/widget/bottom_navigate_desktop.dart';

class Content extends StatefulWidget {
  final String title;
  const Content({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  late dynamic title = widget.title;
  late double upPadding;
  late double sidePadding;
  late double width;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    upPadding = width > 1100
        ? 150.0
        : width > 500
            ? 50.0
            : 20;
    sidePadding = width > 1100
        ? 80
        : width > 500
            ? 50
            : 20;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            allView(),
            BottomNavigator(),
          ],
        ),
      ),
    );
  }

  Widget allView() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: upPadding,
        vertical: sidePadding,
      ),
      child: Column(
        children: [
          welcomeImage(),
          Body(title: title),
          const Comments(),
          const AddComment(),
        ],
      ),
    );
  }

  Widget welcomeImage() {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      height: width > 800 ? 500 : 300,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
            "https://res.cloudinary.com/practicaldev/image/fetch/s--4BjMqsdN--/c_imagga_scale,f_auto,fl_progressive,h_420,q_auto,w_1000/https://dev-to-uploads.s3.amazonaws.com/uploads/articles/4anecy5mdl4pho8w7519.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
