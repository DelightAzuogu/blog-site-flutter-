// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:project_two/widget/blog_Preview.dart';

class HomeBlogDisplay extends StatelessWidget {
  late double width;
  HomeBlogDisplay({Key? key}) : super(key: key);

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

  Widget bigView() {
    return Container(
      width: width,
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
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                ],
              ),
            ),
            vertDivider(),
            Expanded(
              child: Column(
                children: [
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                ],
              ),
            ),
            vertDivider(),
            Expanded(
              child: Column(
                children: [
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mediumView() {
    return Container(
      width: width,
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
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                ],
              ),
            ),
            vertDivider(),
            Expanded(
              child: Column(
                children: [
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                  divider(),
                  const BlogPreview(title: "Title"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget smallView() {
    return Container(
      width: width,
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
            const BlogPreview(title: "Title"),
            divider(),
            const BlogPreview(title: "Title"),
            divider(),
            const BlogPreview(title: "Title"),
            divider(),
            const BlogPreview(title: "Title"),
            divider(),
            const BlogPreview(title: "Title"),
            divider(),
            const BlogPreview(title: "Title"),
          ],
        ),
      ),
    );
  }
}
