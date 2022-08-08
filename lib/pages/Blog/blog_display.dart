// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:project_two/widget/blog_Preview.dart';

class BlogDisplay extends StatelessWidget {
  final page;
  BlogDisplay({Key? key, required this.page}) : super(key: key);

  late String pageString = page.toString();
  late String title = "this is the titles for page $pageString ";
  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1100) {
          return bigView();
        } else if (constraints.maxWidth > 650) {
          return mediumView();
        } else {
          return smallView();
        }
      },
    );
  }

  Widget bigView() {
    return Container(
      padding: width > 1250
          ? const EdgeInsets.only(
              left: 50,
              right: 50,
            )
          : const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                ],
              ),
            ),
            vertDivider(),
            Expanded(
              child: Column(
                children: [
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                ],
              ),
            ),
            vertDivider(),
            Expanded(
              child: Column(
                children: [
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget divider() {
    return const Divider(
      color: Color.fromARGB(115, 144, 144, 144),
      height: 2,
    );
  }

  Widget vertDivider() {
    return const VerticalDivider(
      width: 5,
      color: Color.fromARGB(115, 144, 144, 144),
    );
  }

  Widget smallView() {
    return Container(
      padding: width < 450
          ? const EdgeInsets.only(
              left: 25,
              right: 25,
            )
          : const EdgeInsets.only(
              left: 50,
              right: 50,
            ),
      child: IntrinsicHeight(
        child: Column(
          children: [
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
            divider(),
            BlogPreview(title: title),
          ],
        ),
      ),
    );
  }

  Widget mediumView() {
    return Container(
      padding: width > 860
          ? const EdgeInsets.only(
              left: 50,
              right: 50,
            )
          : const EdgeInsets.only(
              left: 25,
              right: 25,
            ),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                ],
              ),
            ),
            vertDivider(),
            Expanded(
              child: Column(
                children: [
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                  divider(),
                  BlogPreview(title: title),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
