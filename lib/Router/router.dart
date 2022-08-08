import 'package:flutter/material.dart';
import 'package:project_two/pages/Blog/blog.dart';
import 'package:project_two/pages/about.dart';
import 'package:project_two/pages/contact.dart';
import 'package:project_two/pages/content_page/content.dart';
import 'package:project_two/pages/home/home.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // this is for the home page
      case "/":
        return MaterialPageRoute(
          builder: (_) => const Home(),
          settings: settings,
        );
      // this is for about page
      case "/about":
        return MaterialPageRoute(
          builder: (_) => const About(),
          settings: settings,
        );
      // this is the normal blog page
      case "/blog":
        return MaterialPageRoute(
          builder: (_) => Blog(),
          settings: settings,
        );
      // this is the contant page
      case "/contact":
        return MaterialPageRoute(
          builder: (_) => const Contact(),
          settings: settings,
        );
      //this is the content page
      case "/content":
        var args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (_) => Content(
            title: args["title"],
          ),
          settings: settings,
        );
      default:
        //this is for the blog page with pagination
        var name = settings.name as String;
        if (name.contains("/blog/")) {
          var page = int.parse(name.split("/")[2]);
          return MaterialPageRoute(
            builder: (_) => Blog(page: page),
            settings: settings,
          );
        }
        // this is for an unknown page
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(
                child: Text(
                  "page not found",
                ),
              ),
            );
          },
        );
    }
  }
}
